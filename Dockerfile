FROM debian:stable-slim

# Set environment variables to avoid user interaction during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Python, pip, venv, git, curl, nodejs, npm, and supervisord
RUN apt-get update && \
    apt-get install -y git curl python3 python3-pip python3-venv supervisor && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory to the user's home directory
WORKDIR /root

# Create a virtual environment and activate it automatically on login
RUN python3 -m venv devenv
RUN echo "source ~/devenv/bin/activate" >> ~/.bashrc