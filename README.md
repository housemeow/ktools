# ktools

`ktools` is a collection of development tools designed to simplify the development workflow. Each tool serves a specific purpose and can be easily used at various stages of the development process.

## spa-server

`spa-server` is the first tool in the `ktools` suite, designed to easily serve Single Page Applications (SPA) such as Vue.js projects using Nginx within a Docker container. You can dynamically specify the location of the `dist` directory, making it flexible for different deployment needs.

### Build the Docker Image

First, build the Docker image for `spa-server` using the following command:

```bash
docker build -t spa-server .
```

### Run the Docker Container

You can run the container with the following command, using Docker's -v option to dynamically map your local dist directory to the Nginx web root inside the container:

```bash
docker run -p 8080:80 -v ${PWD}:/usr/share/nginx/html spa-server
```

This command automatically maps the current directory to the container, serving your application at http://localhost:8080.

Example:

```bash
cd ~/projects/your-project/dist
docker run -p 8080:80 -v ${PWD}:/usr/share/nginx/html spa-server
```

This will serve your application, making it accessible in the browser at http://localhost:8080.
