const axios = require('axios');
const { writeFile } = require('fs/promises');

// ** THESE LANGUAGES DID NOT EXIST IN ORIGINAL GUESSLANG DATASET **
let languages = [
    'ABAP',
    'ACTIONSCRIPT',
    'ADA',
    'GROOVY',
    'APEX',
    'AppleScript',
    'ASP',
    'AutoHotKey',
    'AWK',
    'Clojure',
    'Cobol',
    'Crystal',
    'Gradle',
    'D',
    'ELM',
    'Forth',
    'QML',
    'Solidity',
    'SmallTalk',
]

let foundRepositories = []

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

async function loadRepos() {
    for (const lang of languages) {
        for (let i = 1; i <= 20; i++) {
            try {
                await sleep(500) // to prevent rate limit issue
                let config = {
                    method: 'get',
                    maxBodyLength: Infinity,
                    url: 'https://api.github.com/search/repositories?q=language:' + lang + '&sort=stars&order=desc&page=' + i,
                    headers: {
                        'Accept': 'application/vnd.github.v3+json',
                        //'Authorization': 'Bearer GITHUB_TOKEN_HERE'
                    }
                };
                const response = await axios.request(config)
                const data = response.data
                for (const item of data.items) {
                    if (foundRepositories.findIndex((it) => {
                        return it.full_name === item.full_name
                    }) < 0)
                        foundRepositories.push({
                            full_name: item.full_name,
                            lang: lang
                        })
                }
                console.log('Lang: ' + lang + ', Page: ' + i)
                if (data.items.length < 1)
                    break // language results finished
            } catch (e) {
                console.log(e)
                try {
                    await writeResultFile()
                } catch (e) {
                }
                return
            }
        }
    }
    try {
        await writeResultFile()
        console.log('DONE!')
    } catch (e) {
    }
}

async function writeResultFile() {
    try {
        const fileName = 'repositories.txt'
        await writeFile(fileName, foundRepositories.reduce((prev, cur) => {
            return prev + cur.full_name + ',' + cur.lang + '\n'
        }, ''));
        console.log(`Wrote data to ${fileName}`);
    } catch (error) {
        console.error(`Got an error trying to write the file: ${error.message}`);
        throw error
    }
}

loadRepos().then()