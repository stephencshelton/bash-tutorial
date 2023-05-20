#!/bin/bash

# Script to check the arguments.sh script

# Check if the arguments.sh script exists and is executable
if [ ! -x arguments.sh ]; then
    echo "Error: arguments.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise11.sh script."
    exit 1
fi

# Execute the arguments.sh script with "OpenAI", "GPT", and "Awesome" as arguments and capture its output
output=$(./arguments.sh OpenAI GPT Awesome)

# Define the expected output
expected_output="OpenAI
GPT
Awesome"

# Compare the actual and expected outputs
if [ "$output" == "$expected_output" ]; then
    echo "Test passed! Your arguments.sh script is working correctly."
else
    echo "Test failed. Expected output: '$expected_output', but got: '$output'"
fi