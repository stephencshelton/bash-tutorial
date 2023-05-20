#!/bin/bash

# Script to check the loop.sh script

# Check if the loop.sh script exists and is executable
if [ ! -x loop.sh ]; then
    echo "Error: loop.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise10.sh script."
    exit 1
fi

# Execute the loop.sh script and capture its output
output=$(./loop.sh)

# Define the expected output
expected_output="Apple
Banana
Cherry"

# Compare the actual and expected outputs
if [ "$output" == "$expected_output" ]; then
    echo "Test passed! Your loop.sh script is working correctly."
else
    echo "Test failed. Expected output: '$expected_output', but got: '$output'"
fi