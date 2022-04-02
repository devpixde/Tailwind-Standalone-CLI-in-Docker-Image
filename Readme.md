# Tailwind Standalone CLI in Docker image


This project serves as a template for simple experiments and learnings with tailwindcss


* No need to install anything on your mashine, except Docker
* Lightweight, node free 
* Tailwind runs in watch mode, but no hot reloading of browser
* No server, just run index.html from file system

* If you prefer hot reloading and a real web-server have a look at the tailwind with node Docker image.

## Prerequisite

* Have Docker installed. See: https://www.docker.com

## Setup

* clone repository
* cd into directory

* Build Docker image

```shell
docker build -t tailwind-standalone-cli-image .
```

* Create and run Docker container and get bash
```shell
docker run --name tailwind-standalone-cli-container -it -v "${PWD}:/app" -w "/app"  tailwind-standalone-cli-image
```
* alternatively, if you don't want interactivity:
```shell
docker run --name tailwind-standalone-cli-container -i -v "${PWD}:/app" -w "/app"  tailwind-standalone-cli-image
```

* Start/Stop Containter
```shell
docker start -i tailwind-standalone-cli-container
docker stop tailwind-standalone-cli-container
```

* Get access to container by terminal:
```shell
docker exec -it tailwind-standalone-cli-container /bin/bash
```

within interactive docker container:

```shell
tailwindcss  -i ./src/main.css -o ./dist/main.css --watch
```

* Alternativly you can do the same by using Docker Desktop UI 


## When container is running

* Edit html and css, apply tailwind classes
* Tailwind automatically compiles your code after each change and creates a new ./dist/main.css that can be displayed by the browser.
* Open index.html in your browser, reload browser after each code change.