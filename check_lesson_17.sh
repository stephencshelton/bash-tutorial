#!/bin/bash

# Check script for Lesson: Linux File Descriptors

# Source the student's script - this will execute their code
source ./bash_lesson_file_descriptors.sh

# Check if the text file exists and if it has content
if [[ ! -f ./textfile.txt ]]; then
    echo "The 'textfile.txt' file does not exist. Please ensure you have created this file."
    exit 1
fi

file_content=$(cat ./textfile.txt)

if [[ -z "${file_content}" ]]; then
    echo "The 'textfile.txt' file does not contain any content. Please ensure you have written to this file using the file descriptor."
    exit 1
fi

echo "Lesson on Linux file descriptors complete."