const axios = require('axios');
const fs = require('fs');
const https = require('https');
const path = require('path');
const crypto = require('crypto');

// ** THESE LANGUAGES DID NOT EXIST IN ORIGINAL GUESSLANG DATASET **
let extensions = [
    // {
    //     search: 'path:fift',
    //     forExtension: 'fif'
    // },
    // {
    //     search: 'path:vala',
    //     forExtension: 'vala'
    // },
    // {
    //     search: 'ton+path:func',
    //     forExtension: 'fc'
    // }
]

// called at end to remove duplicate files
async function findAndRemoveDuplicateContents(directory) {
    const contentMap = new Map();

    function hashFile(filePath) {
        const hash = crypto.createHash('sha256');
        const data = fs.readFileSync(filePath);
        hash.update(data);
        return hash.digest('hex');
    }

    async function searchDirectory(currentDir) {
        return new Promise(async (resolve, reject) => {
            const files = fs.readdirSync(currentDir);

            for (const file of files) {
                const filePath = path.join(currentDir, file);

                if (fs.statSync(filePath).isDirectory()) {
                    // If it's a directory, recursively search it
                    await searchDirectory(filePath);
                } else {
                    const fileHash = hashFile(filePath);

                    if (contentMap.has(fileHash)) {
                        // Remove the duplicate file
                        fs.unlinkSync(filePath);
                        console.log(`Removed duplicate: ${filePath}`);
                    } else {
                        // Add the file's hash to the map
                        contentMap.set(fileHash, filePath);
                    }
                }
            }
            resolve()
        })
    }

    await searchDirectory(directory);
}

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

let index = 0

function download(url, dest, cb) {
    console.log('downloading, ', {
        url,
        dest
    })
    const file = fs.createWriteStream(dest);
    https.get(url, function (response) {
        response.pipe(file);
        file.on('finish', function () {
            file.close(cb);  // close() is async, call cb after close completes.
        });
    }).on('error', function (err) { // Handle errors
        fs.unlink(dest); // Delete the file async. (But we don't check the result)
        if (cb) cb(err.message);
    });
};

async function loadRepos() {
    for (const ext of extensions) {
        for (let i = 1; i <= 50; i++) {
            try {
                await sleep(500) // to prevent rate limit issue
                let config = {
                    method: 'get',
                    maxBodyLength: Infinity,
                    url: 'https://api.github.com/search/code?q=' + ext.search + '&sort=stars&order=desc&page=' + i,
                    headers: {
                        'Accept': 'application/vnd.github.v3+json',
                        'Authorization': 'Bearer YOUR_TOKEN_HERE'
                    }
                };
                const response = await axios.request(config)
                const data = response.data
                for (const item of data.items) {
                    try {
                        if (item.path.endsWith('.' + ext.forExtension)) {
                            await sleep(500) // to prevent rate limit issue
                            const responseItemData = await axios.request({
                                ...config,
                                url: item.url
                            })
                            if (responseItemData.data?.download_url) {
                                let dir
                                if (index % 35 < 27) {
                                    dir = 'train'
                                } else if (index % 35 < 31) {
                                    dir = 'test'
                                } else {
                                    dir = 'valid'
                                }
                                index++
                                download(responseItemData.data.download_url,
                                    './files/' + dir + '/' + new Date().getTime() + '__' + item.path.split('/').join('__'))
                            }
                        }
                    } catch (e) {
                        console.log(e)
                    }
                }
                console.log('ext: ' + ext.search + ', Page: ' + i)
                if (data.items.length < 1)
                    break // language results finished
            } catch (e) {
                console.log(e)
                try {
                } catch (e) {
                }
                return
            }
        }
    }
    try {
        console.log('Downloaded, Now, Lets remove duplicates')
        await findAndRemoveDuplicateContents('./files/') // can be improved by removing duplicates before splitting into test/train/valid!
        console.log('DONE')
    } catch (e) {
    }
}

loadRepos().then()