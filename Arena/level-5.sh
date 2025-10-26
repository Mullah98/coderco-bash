#!/bin/bash

mkdir -p "./Battlefield"
touch "Battlefield/knight.txt" "Battlefield/sorcerer.txt" "Battlefield/rogue.txt"
echo "3 files successfully created!"

if [ -f "./Battlefield/knight.txt" ]; then
    echo "Knight file exists!"
    mkdir -p ./Archive
    mv "./Battlefield/knight.txt" "Archive"
    echo "Moved knight.txt into Archive directory"
else    
    echo "File does not exist"
fi

echo # Print blank line
echo "Contents of Battlefield:"
ls "./Battlefield"
echo
echo "Contents of Archive:"
ls "./Archive"