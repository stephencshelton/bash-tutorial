#!/bin/bash

# Check script for Lesson: Signal Handling in Bash

# Source the student's script - this will execute their code
source ./bash_lesson_signal_handling.sh &

# Sleep for a second to allow the script to start
sleep 1

# Send a SIGINT signal to the student's script
kill -SIGINT $!

# Wait for the script to terminate
wait $! 2>/dev/null

# Check the exit status of the script
if [[ $? -eq 0 ]]; then
    echo "The script terminated successfully upon receiving the SIGINT signal."
else
    echo "The script did not terminate successfully upon receiving the SIGINT signal."
    exit 1
fi