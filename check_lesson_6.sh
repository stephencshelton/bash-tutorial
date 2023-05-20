#!/bin/bash

# Script to check the functions.sh script

# Check if the functions.sh script exists and is executable
if [ ! -x functions.sh ]; then
    echo "Error: functions.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise6.sh script."
    exit 1
fi

# Execute the functions.sh script and capture its output
output=$(./functions.sh)

# Define the expected output
expected_output="Hello, World"

# Compare the actual and expected outputs
if [ "$output" == "$expected_output" ]; then
    echo "Test passed! Your functions.sh script is working correctly."
else
    echo "Test failed. Expected output: '$expected_output', but got: '$output'"
fi