#!/bin/bash

# Script to check the arguments.sh script

# Check if the arguments.sh script exists and is executable
if [ ! -x arguments.sh ]; then
    echo "Error: arguments.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise5.sh script."
    exit 1
fi

# Execute the arguments.sh script with an argument and capture its output
output_with_argument=$(./arguments.sh World)

# Define the expected output when an argument is provided
expected_output_with_argument="Hello, World"

# Execute the arguments.sh script without an argument and capture its output
output_without_argument=$(./arguments.sh)

# Define the expected output when no argument is provided
expected_output_without_argument="No argument provided."

# Compare the actual and expected outputs
if [ "$output_with_argument" == "$expected_output_with_argument" ] && [ "$output_without_argument" == "$expected_output_without_argument" ]; then
    echo "Test passed! Your arguments.sh script is working correctly."
else
    echo "Test failed. Please revisit the requirements in the exercise5.sh script."
fi