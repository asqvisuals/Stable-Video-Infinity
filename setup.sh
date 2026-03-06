#!/bin/bash

# Define environment name and required packages
ENV_NAME="stable_video_infinity_env"
REQUIRED_PACKAGES="numpy pandas tensorflow torch torchvision"

# Create a Conda environment
echo "Creating Conda environment: $ENV_NAME"
conda create --name $ENV_NAME python=3.8 -y

# Activate the environment
echo "Activating Conda environment"
source activate $ENV_NAME

# Install required packages
echo "Installing required packages"
conda install -c conda-forge $REQUIRED_PACKAGES -y

# Install additional dependencies if there's a requirements.txt
if [ -f requirements.txt ]; then
    echo "Installing additional dependencies from requirements.txt"
    pip install -r requirements.txt
fi

# Download models (replace MODEL_URL and TARGET_DIR with actual values)
echo "Downloading pre-trained models"
MODEL_URL="http://example.com/path/to/model"
TARGET_DIR="models"
mkdir -p $TARGET_DIR
wget $MODEL_URL -P $TARGET_DIR

echo "Setup completed! Activate your environment using 'conda activate $ENV_NAME'"