#!/bin/bash


directory="$1"

if [ -z "$directory" ]; then
    echo "Please enter a directory"
elif [ ! -d "$directory" ]; then
    echo "Directory does not exist"
else
    echo "Files ordered from smallest to largest:"
    ls -1Sr "$directory"/*.txt
fi
