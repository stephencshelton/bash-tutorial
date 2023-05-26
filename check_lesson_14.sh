#!/bin/bash

# Source the student's script - this will execute their code
source ./bash_lesson_pipes.sh

# Check if the numbers.txt file exists
if [[ ! -f "numbers.txt" ]]; then
    echo "File numbers.txt must exist. Please make sure you create it in the bash_lesson_pipes.sh script."
    exit 1
fi

# Check if the contents of numbers.txt match the expected output
EXPECTED_OUTPUT=$(printf "5\n4\n3\n2\n1\n")
STUDENT_OUTPUT=$(cat numbers.txt | sort -r)

if [[ "$EXPECTED_OUTPUT" != "$STUDENT_OUTPUT" ]]; then
    echo "The numbers are not sorted in reverse order. Please ensure they are sorted correctly."
    exit 1
else
    echo "Lesson 9 complete"
fi