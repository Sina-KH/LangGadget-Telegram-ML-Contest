**This documentation lets you know what is going on under the hood of the dataset generator, and how you can customize it for your use-case.**

First of all, as mentioned in  the README.md file, this script is originally from `guesslangtools` repository, but I have modified it to fit my requirements.

**To support more languages (than original guesslangtools), I've created `01_RepoFinder`, which allows us to find repositories for more languages on github and add them into `02_DatasetGenerator/data/other_repositories`.
I have done that for the languages mentioned in the `repoFinder.js` file.**

**Finally, to support languages that DO NOT HAVE ENOUGH repositories available, I have added training files manually into CACHE_PATH/files and you can use them from `AdditionalDatasetFiles` directory and copy them into your dataset!**


After you installed all the requirements mentioned in the [01_install_requirements](01_install_requirements.md) file,
Now you can easily run this command to create the dataset:

`pip install .`
`gltool CACHE_PATH_TO_SAVE_DATASET`

If you want, It is possible to customize the dataset options using these inputs:

**--nb-repo**:
number of repositories per language
default: 8000

**--nb-train-files**:
number of training files per language
default: 27000

**--nb-valid-files**:
number of validation files per language
default: 4000

**--nb-test-files**:
number of testing files per language
default: 4000

**--util-prediction-confidence**:
plot the prediction probabilies distribution for each language
default: False

**--util-confusion-matrix**:
show languages that Guesslange confuses with others

**--util-less-training-files**:
extract a subset of the training files dataset

**--hack-repo-dist**:
show the number of selected repositories per languages
default: False

**--hack-download-repo-list**:
download a list or repository names from Github for a language

**--hack-merge-repo-list**:
merge downloaded repository names to the selected repositories

**--hack-add-repo**:
select more repositories for the listed languages

**--hack-only-use-downloaded-repo**:
only use the repositories that have already been downloaded

---

#### After downloading, extracting and processing the data, the dataset files will be created in the CACHE_PATH provided.