#!/bin/bash

if [ ! -d "./Backup" ]; then
    echo "Backup directory does NOT exist."
    mkdir ./Backup # Creating directory if it does NOT exist
else
    echo "Backup directory exists."
fi
    cp -rn Arena/*.txt ./Backup # Copy all .txt files into Backup directory. -n will skip files that already exist.
    echo "Text files successfully copied into Backup directory."
