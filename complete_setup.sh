#!/bin/bash

# Colors for output
GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
NC="\033[0m" # No Color

# Function to display a message
function echo_info() {
    echo -e "${GREEN}$1${NC}"
}

function echo_error() {
    echo -e "${RED}$1${NC}"
}

function echo_warning() {
    echo -e "${YELLOW}$1${NC}"
}

# Step 1: Create Conda Environment
echo_info "Creating Conda Environment..."
conda create -n stable_video_infinity python=3.8 -y
source activate stable_video_infinity

# Step 2: Install Dependencies
echo_info "Installing dependencies..."
pip install -r requirements.txt

# Step 3: Model Downloads
models=("ModelA" "ModelB" "ModelC")
sizes=(500MB 1GB 700MB)
times=(2 5 3) # estimated times in minutes

for i in "${!models[@]}"; do
    echo_info "Preparing to download ${models[$i]} (${sizes[$i]})"
    read -p "Do you want to download ${models[$i]}? (y/n): " choice
    if [[ "$choice" == "y" ]]; then
        echo_info "Downloading ${models[$i]}... This may take around ${times[$i]} minutes."
        # Simulate download (Replace with actual download command)
        sleep 2 # Simulating download time
        echo_info "${models[$i]} has been downloaded successfully!"
    else
        echo_warning "${models[$i]} will be skipped."
    fi
done

echo_info "Setup complete!"