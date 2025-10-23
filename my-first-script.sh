#!/bin/bash

validate_age() {
    age=$1

    if ! [[ $age =~ ^[0-9]+$ ]]
    then
        echo "Invalid age. Please provide a number."
        return 1
    fi

    if [ $age -lt 18 ]
    then
        echo "Sorry, you must be atleast 18 years old."
        return 1
    fi

    echo "Congrats, you are eligible!"
    return 0
}


read -p "Please enter your age: " userAge
validate_age "$userAge"
exitCode=$?

if [ $exitCode -ne 0 ]
then
    echo "Input validation failed"
else
    echo "Input validation successful"
fi


# sanitize_string() {
#     local input=$1
#     echo "${input//[^a-zA-Z0-9]/}"
# }

# read -p "Enter username: " username
# sanitized_string=$(sanitize_string "$username")
# echo "Sanitized username: $sanitized_string"