#!/bin/bash

# Script to check the variables.sh script

# Check if the variables.sh script exists and is executable
if [ ! -x variables.sh ]; then
    echo "Error: variables.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise2.sh script."
    exit 1
fi

# Execute the variables.sh script and capture its output
output=$(./variables.sh)

# Define the expected output
expected_output="Hello, World!"

# Compare the actual and expected outputs
if [ "$output" == "$expected_output" ]; then
    echo "Test passed! Your variables.sh script is working correctly."
else
    echo "Test failed. Expected output: '$expected_output', but got: '$output'"
fi