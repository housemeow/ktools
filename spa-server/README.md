# ktools/spa-server

This repository demonstrates how to serve a Single Page Application (SPA) like a Vue.js project using Nginx in a Docker container. You can dynamically specify the location of the `dist` directory when running the Docker container, making it flexible for various deployment setups.

## Prerequisites

Before proceeding, ensure you have the following:

- [Docker](https://www.docker.com/get-started) installed on your machine.
- A Vue.js project or any SPA that has already been built and has a `dist` directory ready for deployment.

## Quick Start

Follow these steps to build and run the Docker container to serve your Vue.js project.

### Step 1: Build the Docker Image

Build the Docker image using the provided `Dockerfile`. This will create an Nginx container pre-configured to serve your project.

```bash
docker build -t spa-server .
```

### Step 2: Run the Docker Container

Once the Docker image is built, you can run the container, specifying your local dist directory to be served by Nginx. Use the -v option to map your project’s dist folder to the Nginx HTML directory inside the container.

```bash
docker run -p 8080:80 -v /path/to/your/dist:/usr/share/nginx/html spa-server
```

Replace /path/to/your/dist with the path to your actual dist directory. For example:

```bash
docker run -p 8080:80 -v ~/projects/tsps/tsps/frontend/dist:/usr/share/nginx/html spa-server
```

This command will make your app accessible at http://localhost:8080.

Alternatively, if your terminal is already in the correct directory, you can simply run:

```bash
cd sample/
docker run -p 8080:80 -v ${PWD}:/usr/share/nginx/html spa-server
```

This will automatically map the current directory to the container.

### Step 3: Use the run.sh Script (Optional)

For convenience, you can use the provided run.sh script to run the container. This script accepts the path to your dist directory as an argument:

```bash
./run.sh /path/to/your/dist
```

For example:

```bash
./run.sh ~/projects/tsps/tsps/frontend/dist
```
