#!/bin/bash

# make sure xcode command line tools are installed
git

# stay in directory the script is called in
cd "$( dirname "$0" )"

# install google repo tool
curl https://storage.googleapis.com/git-repo-downloads/repo > ./repo
chmod +x ./repo

# download sources
./repo init -u https://github.com/MahrWe/lenovo-510s-13ikb/
./repo sync