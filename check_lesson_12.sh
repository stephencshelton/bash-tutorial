#!/bin/bash

# Script to check the file_manip.sh script

# Check if the file_manip.sh script exists and is executable
if [ ! -x file_manip.sh ]; then
    echo "Error: file_manip.sh does not exist or is not executable."
    echo "Make sure you have completed all requirements in the exercise12.sh script."
    exit 1
fi

# Execute the file_manip.sh script
./file_manip.sh

# Check if file.txt exists and capture its content
if [ -e file.txt ]; then
    file_content=$(cat file.txt)
else
    echo "Error: file.txt does not exist. Ensure your script creates this file."
    exit 1
fi

# Define the expected file content
expected_file_content="Hello, OpenAI!"

# Compare the actual and expected file content
if [ "$file_content" == "$expected_file_content" ]; then
    echo "Test passed! Your file_manip.sh script is working correctly."
else
    echo "Test failed. Expected content in file.txt: '$expected_file_content', but got: '$file_content'"
fi