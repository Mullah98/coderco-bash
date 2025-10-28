#!/bin/bash

word="$1"

if [ -z "$word" ]; then
    echo "Please enter a word or phrase"
else
    file=$(grep -lr "$word" *.log)
    if [ -n "$file" ]; then
        echo "$word found in the following files:"
        echo "$file"
    else
        echo "No matches not found"
    fi
fi