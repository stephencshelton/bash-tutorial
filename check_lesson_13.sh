#!/bin/bash

# Source the student's script - this will execute their code
source ./bash_lesson_redirects.sh

# Check if the hello.txt and hello_copy.txt exist
if [[ ! -f "hello.txt" ]] || [[ ! -f "hello_copy.txt" ]]; then
    echo "Both hello.txt and hello_copy.txt must exist. Please make sure you create them in the bash_lesson_redirects.sh script."
    exit 1
fi

# Check if the contents of hello.txt and hello_copy.txt match
diff -q hello.txt hello_copy.txt >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "The contents of hello.txt and hello_copy.txt do not match. Please ensure they have the same contents."
    exit 1
else
    echo "Lesson 8 complete"
fi