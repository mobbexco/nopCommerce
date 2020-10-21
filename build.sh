#!/bin/sh

VER="1.0.0"
CUR_TIME=$(date "+%Y.%m.%d-%H.%M.%S")
FOLDER="Payments.Mobbex"

if type 7z > /dev/null; then
    7z a -tzip "mobbex.$VER.nopCommerce.$CUR_TIME.zip" $FOLDER
    7z a -tzip "mobbex.$VER.nopCommerce.zip" $FOLDER
else
    zip mobbex.$VER.nopCommerce.$CUR_TIME.zip -r $FOLDER
    zip mobbex.$VER.nopCommerce.zip -r $FOLDER
fi

