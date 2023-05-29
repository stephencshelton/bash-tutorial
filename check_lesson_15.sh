#!/bin/bash

# Source the student's script - this will execute their code
source ./bash_lesson_logical_operators.sh

# Check the declared variables and their values
if [[ -z "${a}" || -z "${b}" ]]; then
    echo "Both variables 'a' and 'b' must be declared and assigned a value."
    exit 1
fi

# Check if the condition and output is correct
if [[ "$a" -gt "$b" && "$a" -lt 100 ]]; then
    EXPECTED_OUTPUT="a is greater than b and less than 100"
else
    EXPECTED_OUTPUT="Condition is not true"
fi

STUDENT_OUTPUT=$(./bash_lesson_logical_operators.sh)

if [[ "${EXPECTED_OUTPUT}" != "${STUDENT_OUTPUT}" ]]; then
    echo "The output does not match the expected output. Please ensure the if-else statement and print statements are correct."
    exit 1
else
    echo "Lesson 10 complete"
fi
