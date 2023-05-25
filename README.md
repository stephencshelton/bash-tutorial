# Terraform & Bash Learning Repository

This repository provides an interactive learning experience for Terraform and Bash scripting. Each lesson has a script (Terraform or Bash) with commented instructions to follow and a corresponding check script to validate the implementation.

## Requirements

- Visual Studio Code (VSCode)
- Docker Desktop
- Windows Subsystem for Linux 2 (WSL2)
- Devcontainer extension for VSCode

## Setup

1. **Install Visual Studio Code**: Download and install VSCode from the [official website](https://code.visualstudio.com/).

2. **Install the devcontainer extension for VSCode**: Follow the directions from the [official website](https://code.visualstudio.com/docs/devcontainers/tutorial).

3. **Install Docker Desktop**: Download and install Docker Desktop from the [official website](https://www.docker.com/products/docker-desktop).

4. **Setup WSL2 for Docker Desktop**:
    - Install WSL2 by following the instructions from the [Microsoft's official guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
    - After installing WSL2, go to Docker Desktop Settings -> Resources -> WSL Integration, and enable integration with your Linux distro.

5. **Clone this repository**: Clone this repository to your local machine and open the cloned folder in VSCode.

6. **Open VSCode and clone this repository**:

7. **Open repository in devcontainer**: Once you clone the repository hit `F1` and type `dev` which will show the option `Dev Containers: Rebuild and Reopen in Container` which will launch your ubuntu environment to write/run your scripts

## Lessons Overview

**Bash Lessons:**

- **Lesson 1**: Learn to print a string to the console.
- **Lesson 2**: Learn about variables in Bash.
- **Lesson 3**: Learn about conditional statements (if-else).
- **Lesson 4**: Learn about for loops.
- **Lesson 5**: Learn about command line arguments.
- **Lesson 6**: Learn about bash functions.
- **Lesson 7**: Learn about user input.
- **Lesson 8**: Learn about array manipulation in Bash.
- **Lesson 9**: Learn about conditional execution.
- **Lesson 10**: Learn about looping over bash arrays.
- **Lesson 11**: Learn about multiple command line arguments.
- **Lesson 12**: Learn about file manipulation in bash.

## Instructions

1. Open the respective `.md` file of the lesson you want to work on.
2. Follow the instructions provided in the markdown file.
3. After completing the exercise, run the corresponding check script `./check_lesson_<number>.sh` to validate your implementation.
4. If the check script doesn't output any errors, you have completed the lesson successfully. If there are any errors, revisit your script, debug and run the check script again.

Happy Learning!
