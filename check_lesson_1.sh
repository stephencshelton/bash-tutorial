#!/bin/bash

# Script to check the hello_world.sh script

# Check if the hello_world.sh script exists and is executable
if [ ! -x hello_world.sh ]; then
    echo "Error: hello_world.sh does not exist or is not executable."
    echo "Make sure you have completed all steps in the exercise.sh script."
    exit 1
fi

# Execute the hello_world.sh script and capture its output
output=$(./hello_world.sh)

# Define the expected output
expected_output="Hello, World!"

# Compare the actual and expected outputs
if [ "$output" == "$expected_output" ]; then
    echo "Test passed! Your hello_world.sh script is working correctly."
else
    echo "Test failed. Expected output: '$expected_output', but got: '$output'"
fi