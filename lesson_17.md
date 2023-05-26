# Exercise: Linux File Descriptors

In this exercise, you will learn about file descriptors in Linux and how to work with them in a bash script.

In Linux, file descriptors are non-negative integers that are associated with an open file and can be used to read or write data to that file.

By default, there are three standard file descriptors:

- 0 - Standard Input (stdin)
- 1 - Standard Output (stdout)
- 2 - Standard Error (stderr)

## Requirements

- Create a new Bash script in the same directory as this markdown file and name it "bash_lesson_file_descriptors.sh".
- In this script, you should:
  - Create a new text file and assign it a file descriptor using the `exec` command.
  - Write some text to this file using the file descriptor.
  - Close the file descriptor once you're done writing to the file.
  - Print the content of the text file to the terminal.