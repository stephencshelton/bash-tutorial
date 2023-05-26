#!/bin/bash

# Check script for Lesson: Job Control in Bash

# Run the student's script - this will execute their code
./bash_lesson_job_control.sh &> /dev/null

# Check if the process has been successfully killed
if [ $(jobs -p | wc -l) -eq 0 ]; then
    echo "The process has been correctly killed."
else
    echo "The process has not been correctly killed."
    exit 1
fi