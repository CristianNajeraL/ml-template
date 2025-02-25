# ml-template
Minimal ML environment

# ML Environment with Docker

This repository provides a simple way to set up a Jupyter Notebook environment using Docker.

## Files Overview

- **Dockerfile**: Defines the Docker image based on `continuumio/anaconda3`, installs Jupyter, and sets up a workspace.
- **start.sh**: Builds and runs the container, then prints the Jupyter Notebook URL automatically.
- **stop.sh**: Stops and removes the running container.
- **notebooks/**: Directory where Jupyter Notebooks will be stored (mapped to the container).
- **LICENSE**: Specifies the terms of use for this project.
- **README.md**: Documentation on how to use this repository.

## Getting Started

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. Make the shell scripts executable:
   ```bash
   chmod +x start.sh stop.sh
   ```

3. Run the setup script to build and start the environment:
   ```bash
   ./start.sh
   ```

4. Open Jupyter Notebook:
   - The script will print the Jupyter Notebook URL automatically.
   - If needed, find the token in the logs using:
     ```bash
     docker logs ml_env
     ```
   - Open your browser and go to the printed URL.

## Stopping the Container
To stop and remove the running container, run:
```bash
./stop.sh
```