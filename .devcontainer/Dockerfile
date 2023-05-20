# Use the official image as a parent image
FROM ubuntu:22.04

# Set the working directory
WORKDIR /workspace

# Install necessary packages
RUN apt-get update && apt-get install -y \
    git \
    curl \
    vim \
    build-essential \
    shellcheck

# Clean up to reduce image size
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# This will automatically enable the vscode server's features
RUN useradd -m vscode
RUN chown -R vscode:vscode .
USER vscode
COPY . .
WORKDIR /home/vscode

# This will enable the terminal's interactive shell
CMD [ "/bin/bash" ]