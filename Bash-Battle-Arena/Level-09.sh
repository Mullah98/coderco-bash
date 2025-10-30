#!/bin/bash

directory="$1"

inotifywait -m -e create,modify,delete "$directory" | while read path action file; do
    echo "ACTION: $action | FILE: $file | PATH: $path | TIMESTAMP: $(date '+%Y-%m-%d %H:%M:%S')"
done
