#!/bin/bash

# Update package manager
sudo apt update -y
# Install Docker
sudo apt install docker.io -y

# Start Docker service
sudo service docker start

# Pull Docker image
sudo docker pull saii16/monitor_app:v1

# Run Docker container in detached mode, mapping port 5000
sudo docker run -d -p 5000:5000 saii16/monitor_app:v1
