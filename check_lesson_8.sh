#!/bin/bash

# Script to check the array.sh script

# Check if the array.sh script exists and is executable
if [ ! -x array.sh ]; then
    echo "Error: array.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise8.sh script."
    exit 1
fi

# Execute the array.sh script and capture its output
output=$(./array.sh)

# Define the expected output
expected_output="Banana
Apple
Banana
Cherry
Dragonfruit"

# Compare the actual and expected outputs
if [ "$output" == "$expected_output" ]; then
    echo "Test passed! Your array.sh script is working correctly."
else
    echo "Test failed. Expected output: '$expected_output', but got: '$output'"
fi