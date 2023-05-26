#!/bin/bash

# Check script for Lesson: Regular Expressions with Bash

# Run the student's script - this will execute their code
output=$(./bash_lesson_regex.sh)

# Check if the output is a word with at least four characters
if [[ ${#output} -ge 4 ]]; then
    echo "The script correctly found a word in the sentence."
else
    echo "The script did not find a word in the sentence correctly."
    exit 1
fi