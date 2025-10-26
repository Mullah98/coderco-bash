#!/bin/bash

#---
# read_file() {
#     local file_path="$1"

#     while IFS= read -r line; do
#         echo "$line"
#     done < "$file_path"
# }

# read_file "./log.txt"

# process_file() {
#     local file_path="$1"

#     cat "$file_path" | while IFS= read -r line; do
#         echo "Processing line: $line"
#     done
# }

# process_file "./log.txt"

#----
# write_to_file() {
#     local file_path="$1"
#     local data="$2"

#     echo "$data" >> "$file_path"
# }

# write_to_file "read.txt" "Bonjour Monde!"

#-----
calculate_md5sum() {
    local file_path="$1"
    md5sum "$file_path"
}

calculate_md5sum "read.txt"