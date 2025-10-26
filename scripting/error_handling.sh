#!/bin/bash

# num1=10
# num2=0

# if [ $num2 -eq 0 ]
# then
#     echo "Error: Division by zero is not allowed"
#     exit 1
# fi

# result=$((num1 / num2))

# echo "The result is: $result"


#------
# FILE="/nonexistent"

# if [[ -f "$FILE" ]]; then
#     echo "File exists"
# else
#     echo "File does NOT exist"
# fi

#-----
# command -v git 2>/dev/null

# if [[ $? -ne 0 ]]; then
#     echo "git is not installed. Please install git."
#     exit 1
# else
#     echo "git is installed"
# fi

#-----
# set -e

# echo "Before the script"
# nonexistentcommand
# echo "After the script"

#----
# set -u

# X=10
# Y=20
# Z=$((X + Y + W))
# echo "Z equals: $Z"

#----
# set -x

# echo "Starting the script"
# x=10
# y=15
# z=$((x + y))
# echo "The value of z is $z"

#----
# set -eux

# echo "This is a test"
# X=10
# echo "The value of x is: $X"

# nonexistentcommand


#----
# set -o errexit

# echo "This is a test"
# non_existent_command   # Script stops here
# echo "This won't run"