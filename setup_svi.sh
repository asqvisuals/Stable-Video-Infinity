#!/bin/bash

# This script automates the installation and model download process for Stable Video Infinity

echo "Starting the setup process..."

# Clone the repository
echo "Cloning the Stable Video Infinity repository..."
git clone https://github.com/asqvisuals/Stable-Video-Infinity.git

# Change to the project directory
cd Stable-Video-Infinity

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Download models
echo "Downloading models..."
# Assuming there is a script or command to download models (replace with actual command)
wget http://example.com/path/to/model.zip
unzip model.zip -d models

echo "Setup process completed successfully."