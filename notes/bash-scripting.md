# Bash Scripting Cheatsheet

---

# Shebang & Running scripts:

- **`#!/bin/bash`** – Goes top of script file. Tells system which interpreter to use
- **`chmod +x script.sh`** – Make script executable
- **`./script.sh`** – Run script

---

# Variables:

- **`greeting="Hello World!"`** – Create variable
- **`echo $greeting`** – Access variable
- **`num=7`**

- **`name="John Doe"`**
- **`echo "Hello $name"`** – Variable interpolation

---

# Arrays:

- **`my_array=(one two three)`** – Create array
- **`echo ${my_array[0]}`** – Access first element
- **`echo ${my_array[@]}`** – Access all elements

---


# Parameters:

- **`$0`** – Script name
- **`$1`** – First argument
- **`$2`** – Second argument
- **`$@`** – All arguments
- **`$#`** – Number of arguments

---

# Arithmetic expressions:

**Basic:**

- **`a=5;b=10`**
- **`result=$((a + b))`**
- **`echo $result`**

**Random numbers:**

- **`$((RANDOM % 10))`** – Generate random number from 0 - 9
- **`$((RANDOM % 11 + 10))`** – Generate random number from 10 - 20

---

# Conditionals & Loops:

- **`-eq`** – equal
- **-`ne`** – not equal
- **-`lt`** – less than
- **-`le`** – less than or equal
- **-`gt`** – greater than
- **-`ge`** – greater than or equal
- **`if [ -z "$word" ];`** – Check if string is empty
- **`if [ -n "$word" ];`** – Check if string is not empty

---

# Sequence:

- **`seq 1 5`** – 1 2 3 4 5
- **`seq 0 2 10`** – 0 2 4 6 8 10

---

# User input:

- **`read -p "Enter your name: " name`** 
- **`echo "Hello $name`**

---

# Error handling:

- **`echo $?`** – Exit code of last command

**Set options:**

- **`echo $?`** – Show exit code
- **`exit 1 / exit 2`** – Error codes

- **`set -e`** – Stop on error
- **`set -u`** – Stop on uninitialized variables
- **`set -x`** – Print commands before execution (debug mode)
- **`set -eux`** – Combine all three

---


# File operators:

**Reading files:**

- **`while IFS= read -r line; do echo $line; done < file.txt`**

**File checks:**

- **`if [ -f "$file" ];`** – Check if file exists
- **`if [ ! -f "$file" ];`** – Check if file does not exist
- **`if [ -s "$file" ];`** – Check if file exists and is NOT empty
- **`if [ -d "./Backup" ];`** – Check if directory exists
- **`if [ ! -d "./Backup" ];`** – Check if directory does not exist
- **`if [ -r "$file" ];`** – File is readable
- **`if [ -w "$file" ];`** – File is writable
- **`if [ -x "$file" ];`** – File is executable

**Counting lines:**

- **`wc -l "$file"`** – Show count
- **`numOfLines=$(wc -l < "$file")`** – Store count in variable

**Piping:**

- **`local fileCount=$(ls "$directory" | wc -l)`** – Pass output of first command to the second command

---

# File management:

**Copying:**

- **`cp -rn *.txt Backup/`** – Copy .txt files, skip existing files

**Creating directories:**

- **`mkdir -p directory`** – Create new directory without overwriting existing

**Listing:**

- **`ls -S`** – Sort by size (largest to smallest)
- **`ls -Sr`** – Sort by size (smallest to largest)
- **`ls -1`** – One file per line

**Searching:**

- **`grep -lr "word .`** – List files contating word recursively

---

# File monitoring

**Inotifywait:**

- **`inotifywait -m directory`** – Monitor directory continuously
- **`inotifywait -e create,modify,delete directory`** – Specify certains events (create, modify,delete etc)
- **`inotifywait -r directory`** – Watch recursively

# Reading environment variables:sure

- **`echo $HOME`** – Prints home directory
- **`echo $USER`** – Prints username
- **`echo $OSTYPE`** – Prints operating system
- **`$LOGNAME`** – Username of current user
- **`$SHELL`** – Path of user's shell
- **`$PWD`** – Current working directory 
- **`$PATH`** – Directories the system searches for executables
- **`$LANG`** – System language

---

# File Checksums:

**Generate MD5 checksum:**

- **`md5sum file.txt`**

**Generate SHA256 checksum:**

- **`sha256sum file.txt`**
