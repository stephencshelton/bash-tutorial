#!/bin/bash

# Script to check the conditionals.sh script

# Check if the conditionals.sh script exists and is executable
if [ ! -x conditionals.sh ]; then
    echo "Error: conditionals.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise3.sh script."
    exit 1
fi

# Execute the conditionals.sh script and capture its output
output=$(./conditionals.sh)

# Define the expected output
expected_output="Greeting is correct."

# Compare the actual and expected outputs
if [ "$output" == "$expected_output" ]; then
    echo "Test passed! Your conditionals.sh script is working correctly."
else
    echo "Test failed. Expected output: '$expected_output', but got: '$output'"
fi