## LangGadget

`LangGadget` is a library, that detects a programming or markup language of a code snippet. [Supporting 76 Languages!](src/documentations/05_supported_languages.md)

- Accuracy: ~91.34% (I used around 30% of my dataset in training phase because of time (download size of dataset))

This is a _**MODIFIED RE-Implementation**_, using `guesslang` as its _core_ library for both dataset generation and training, with more supported languages, and new cpp implementation to use it easier in other cpp projects.

It is developed for [Telegram ML Competition 2023](https://contest.com/docs/ML-Competition-2023) with full documentation on how to train a model from zero, and how to use it.

I tried my best in this short time, hope it helps. 🙂

## Steps!

- We should first generate a dataset of the source codes, for all the required programming languages.

- In next step we will train our model using `tensorflow` and `DNNLinearCombined` classifier. (using existing, well-known, guesslang lib)

- And finally after training and validating our model, we will use it in our cpp code, and create an easy-to-use cpp library.

## Step 1, RepoFinder

To add support of more languages to the default dataset of the guesslangtools, I've written a js file to find more repositories from github for each language, and add them into `02_DatasetGenerator/data/other_languages.csv`.
Also, I added more languages to the `languages.yml` file.

Some languages did not have enough repositories, so I've written a script to find source codes for each extension and added them to final dataset, also. (and by ignoring dataset generator steps for them)

Ofcourse, with more time, we can create much better dataset for more and more languages.

## Step 2. Dataset Generation

To generate a dataset, Github repositories are being used.
The main dataset comes from the repositories downloaded from [Libraries.io Open Source Repository and Dependency Metadata](https://zenodo.org/record/3626071/files/libraries-1.6.0-2020-01-12.tar.gz?download=1).

To add support for more languages, and also adding more repositories to the languages that do NOT have enough repositories in this dataset,
I've added more repositories into `/data/other_repositories.csv` file in dataset generator.

To make it download the repositories and work:

- Make sure you have installed requirements from [here](src/documentations/01_install_requirements.md).
- Run the main command for dataset generator:
  - Open dataset generator directory: `cd 01_DatasetGenerator`
  - Run this command: `python __main__.py CACHE_PATH` Please note that the CACHE_PATH should be the directory you want to use as your dataset directory on your system. Make sure you have enough disk space on your machine. 150GB is recommended.
  - Wait for it to download the repositories and run the workflow. Finally, You will have your dataset prepared for training in the `CACHE_PATH/files` directory.

**You can read more about dataset generation and available input arguments (to control dataset size), [here](src/documentations/02_dataset_generation.md).**

## Step 3. Training

`guesslang --train /home/sina/guesslang/cache/files --steps 1000 --model /home/sina/guesslang/cache/model`

You can find more info [here in documentations files](src/documentations/03_train.md).

## Final Step. Using it!

Just include/link the library from 04_LangGadgetLib and use it!