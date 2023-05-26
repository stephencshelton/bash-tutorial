#!/bin/bash

# Check script for Lesson: Source Script in Bash

# Source the student's script - this will execute their code
source ./bash_lesson_source_script.sh

# Check if the 'source_script.sh' exists and if the 'greeting' variable is declared and assigned a value
if [[ ! -f ./source_script.sh ]]; then
    echo "The 'source_script.sh' file does not exist. Please ensure you have created this script."
    exit 1
fi

source ./source_script.sh

if [[ -z "${greeting}" ]]; then
    echo "The 'greeting' variable is not declared or assigned a value in 'source_script.sh'. Please ensure you have declared and assigned a value to this variable."
    exit 1
fi

# Check if the student script output matches the expected output
EXPECTED_OUTPUT="Hello, world!"
if [[ "${EXPECTED_OUTPUT}" != "${STUDENT_OUTPUT}" ]]; then
    echo "The output does not match the expected output. Please ensure you have sourced 'source_script.sh' and printed the value of 'greeting' to the terminal."
    exit 1
else
    echo "Lesson on sourcing scripts complete"
fi