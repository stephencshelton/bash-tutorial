#!/bin/bash

# Script to check the loops.sh script

# Check if the loops.sh script exists and is executable
if [ ! -x loops.sh ]; then
    echo "Error: loops.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise4.sh script."
    exit 1
fi

# Execute the loops.sh script and capture its output
output=$(./loops.sh)

# Define the expected output
expected_output="Iteration number: 1
Iteration number: 2
Iteration number: 3
Iteration number: 4
Iteration number: 5"

# Compare the actual and expected outputs
if [ "$output" == "$expected_output" ]; then
    echo "Test passed! Your loops.sh script is working correctly."
else
    echo "Test failed. Expected output: '$expected_output', but got: '$output'"
fi