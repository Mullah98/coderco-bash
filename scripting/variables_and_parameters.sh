#!/bin/bash

# Variables

greeting="Hello World!"
count=30
fruits=(apple, strawberry, kiwi)

echo $greeting
echo $count
echo ${fruits[0]} # Print first element
echo ${#fruits[@]} # Print length of fruits array

name="John"
echo "Hello $name"


# Parameters

echo "First: $1"
echo "Second: $2"
# run ./variables_and_parameters input1 input2

# Artithmetic expansion

num1=$1
num2=$2
result=$(( num1 + num2 ))

echo "Sum: $result"