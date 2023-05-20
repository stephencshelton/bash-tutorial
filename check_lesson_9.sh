#!/bin/bash

# Script to check the conditional.sh script

# Check if the conditional.sh script exists and is executable
if [ ! -x conditional.sh ]; then
    echo "Error: conditional.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise9.sh script."
    exit 1
fi

# Execute the conditional.sh script with "OpenAI" as an argument and capture its output
output_with_argument=$(./conditional.sh OpenAI)

# Define the expected output when the argument is "OpenAI"
expected_output_with_argument="Welcome to OpenAI!"

# Execute the conditional.sh script with "NotOpenAI" as an argument and capture its output
output_with_other_argument=$(./conditional.sh NotOpenAI)

# Define the expected output when the argument is not "OpenAI"
expected_output_with_other_argument="Unrecognized argument."

# Compare the actual and expected outputs
if [ "$output_with_argument" == "$expected_output_with_argument" ] && [ "$output_with_other_argument" == "$expected_output_with_other_argument" ]; then
    echo "Test passed! Your conditional.sh script is working correctly."
else
    echo "Test failed. Please revisit the requirements in the exercise9.sh script."
fi