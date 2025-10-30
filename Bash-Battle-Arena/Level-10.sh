#1/bin/bash

mkdir -p Arena_Boss

count=1

while [ $count -le 5 ]
do
    lines=$(( RANDOM % 11 + 10 ))
    file="Arena_Boss/file$count.txt"

    for i in $(seq 1 $lines); do
        echo "Line $i"
    done > "$file"

    ((count++))

done

echo "File organised from smallest to largest:"
ls -1Sr Arena_Boss/*.txt
echo

matchedFile=$(grep -l "Victory" Arena_Boss/*.txt)

if [ -n "$matchedFile" ]; then
    mkdir -p "Victory_Archive"
    mv "$matchedFile" Victory_Archive/
    echo "Following files moved into Victory_Archive directory:"
    echo "$matchedFile"
else
    echo "No matches found"
fi
