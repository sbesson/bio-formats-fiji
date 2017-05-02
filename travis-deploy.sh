#!/usr/bin/env sh
set -e

export WEBDAV_USER="Bio-Formats"
export UPDATE_SITE="Bio-Formats"

# Define some variables 
export IJ_PATH="$HOME/Fiji.app"
export URL="http://sites.imagej.net/$UPDATE_SITE/"
export IJ_LAUNCHER="$IJ_PATH/ImageJ-linux64"
export PATH="$IJ_PATH:$PATH"

# Install ImageJ
mkdir -p $IJ_PATH/
cd $HOME/
wget --no-check-certificate https://downloads.imagej.net/fiji/latest/fiji-linux64.zip
unzip fiji-linux64.zip
$IJ_LAUNCHER --update update-force-pristine

# Install the package
cd $TRAVIS_BUILD_DIR/
mvn clean package -Dfiji.home=$IJ_PATH

# Deploy the package
$IJ_LAUNCHER --update edit-update-site $UPDATE_SITE $URL "webdav:$WEBDAV_USER:$WIKI_UPLOAD_PASS" .
$IJ_LAUNCHER --update upload-complete-site --force-shadow $UPDATE_SITE
