# Exercise: Signal Handling in Bash

In this exercise, you will learn about signal handling in bash scripts using the trap command.

## Requirements

- Create a new Bash script in the same directory as this markdown file and name it "bash_lesson_signal_handling.sh".
- In this script, you should:
  - Use the `trap` command to catch a SIGINT (Ctrl-C) signal and print a custom message to the terminal when the signal is received.
  - Include an infinite loop in your script to keep it running until it receives a SIGINT signal.