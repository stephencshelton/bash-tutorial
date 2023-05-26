#!/bin/bash

# Check script for Lesson: Networking with Bash

# Run the student's script - this will execute their code
output=$(./bash_lesson_networking.sh)

# Check if the output is a JSON (expecting a JSON response from the API)
if [[ "$output" == "{"* ]]; then
    echo "The script correctly fetched data from the API."
else
    echo "The script did not fetch data from the API correctly."
    exit 1
fi