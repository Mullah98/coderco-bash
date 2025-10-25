#!/bin/bash

file="hero.txt"

if [[ -f "$file" ]]; then
    echo "Hero found!"
else
    echo "Hero missing!"
fi

