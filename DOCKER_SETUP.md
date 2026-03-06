# Docker Setup Instructions for Stable-Video-Infinity

## Prerequisites
- Ensure you have Docker installed on your machine.
- Minimum Docker version required: **20.10.0**

## Step 1: Clone the Repository
First, clone the Stable-Video-Infinity repository:
```bash
git clone https://github.com/<owner>/Stable-Video-Infinity.git
```

## Step 2: Navigate into the Directory
Change into the Stable-Video-Infinity directory:
```bash
cd Stable-Video-Infinity
```

## Step 3: Build the Docker Image
Build the Docker image using the following command:
```bash
docker build -t stable-video-infinity .
```

## Step 4: Run the Docker Container
After building the image, you can run the Docker container by using:
```bash
docker run -d -p 8080:8080 stable-video-infinity
```

## Step 5: Access the Application
Open your web browser and go to `http://localhost:8080` to access the Stable-Video-Infinity application.

## Additional Notes
- You can modify the `Dockerfile` and configurations as necessary based on your requirements.
- Make sure to check the logs if you encounter any issues while running the container.

## Troubleshooting
If you run into problems, please refer to the GitHub issues page or forums for community support.