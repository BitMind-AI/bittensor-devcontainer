FROM debian:stable-slim

# Set environment variables to avoid user interaction during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Python, pip, and venv
RUN apt-get update && \
    apt-get install -y git curl nodejs npm python3 python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory to the user's home directory
WORKDIR /root

# Create a virtual environment and activate it automatically on login
RUN python3 -m venv devenv
RUN echo "source ~/devenv/bin/activate" >> ~/.bashrc

# Copy and build btcli-api
COPY btcli-api btcli-api
RUN cd ./btcli-api && npm ci && npm run build