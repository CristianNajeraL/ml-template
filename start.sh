#!/bin/bash

# Build the Docker image
docker build -t ml_env .

# Run the container in detached mode with volume mounting and port forwarding
docker run -d --name ml_env \
  -v $(pwd)/notebooks:/opt/notebooks \
  -p 8888:8888 ml_env

# Wait for Jupyter Notebook to initialize
sleep 5
echo "Jupyter Notebook URL:"

# Extract and display the Jupyter Notebook access URL from the container logs
docker logs ml_env 2>&1 | grep -o 'http://127.0.0.1:8888/tree?token=[a-z0-9]*' | tail -1