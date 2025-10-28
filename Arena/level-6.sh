#!/bin/bash

file="$1"

if [ -z "$file" ]; then
    echo "No file provided."
elif [ ! -f "$file" ]; then
    echo "File does not exist."
else
    lines=$(wc -l < "$file")
    echo "$file has $lines lines."
fi
s