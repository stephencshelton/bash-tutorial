#!/bin/bash

# Check script for Lesson 7: Functions in Bash

# Source the student's script - this will execute their code
source ./bash_lesson_functions.sh

# Check if the greet function exists
type greet >/dev/null 2>&1 || { echo >&2 "The greet function does not exist. Please make sure you have created it in the bash_lesson_functions.sh script."; exit 1; }

# Check if the greet function works as expected
output=$(greet "World")
expected_output="Hello, World!"
if [[ "$output" == "$expected_output" ]]; then
    echo "Lesson 7 complete"
else
    echo "The greet function did not return the expected output. Please make sure it prints 'Hello, [name]!' to the console."
    exit 1
fi