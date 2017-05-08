#!/bin/bash

# make sure xcode command line tools are installed
git

# install google repo tool
curl https://storage.googleapis.com/git-repo-downloads/repo > ./repo
chmod +x ./repo

# download sources
./repo init -u https://github.com/MahrWe/lenovo-510s-13ikb/
ln -s ./manifests/default.xml .repo/manifest.xml
./repo sync