#!/bin/bash

file="$1"

if [ -z "$file" ]; then
    echo "No file provided."
else
    # Find the first matching file in any subdirectory
    found=$(find . -type f -name "$file" | head -n 1)

    if [ -z "$found" ]; then
        echo "File does not exist."
    else
        lines=$(wc -l < "$found")
        echo "Number of lines in this file: $lines"
    fi
fi
