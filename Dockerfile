FROM debian:stable-slim

# Set environment variables to avoid user interaction during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Python, pip, and venv
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory to the user's home directory
WORKDIR /root

# Create a virtual environment and activate it automatically on login
RUN python3 -m venv devenv
RUN echo "source ~/devenv/bin/activate" >> ~/.bashrc

# Activate the virtual environment and install bittensor
# Note: This RUN command does not persist the activation state to subsequent commands or sessions.
# The .bashrc modification above ensures activation upon login.
RUN . ~/devenv/bin/activate && pip install bittensor

# Set the default command to open a bash shell
CMD ["/bin/bash"]
