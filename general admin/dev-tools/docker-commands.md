# Docker
## Docker general setup
- install docker, with admin privileges
- [download](https://docs.docker.com/get-docker/)

***
## Naming
 Docker image names are slash separated, for example
 
"TARGET_IMAGE" / "SOURCE_IMAGE"

Docker container names are also slash separated, but in **lower case**, for example 

"docker_container". 

***

### Create a docker image
There are 2 ways to create docker images, first is via your custom Dockerfile or docker.compose and the other is directly pulling a default image
from docker hub. 

To build a new image from a dockerfile: navigate to the Dockerfile location and enter the command:

`docker build -t <ImageName>:<Version> .`
- -t flags our newly created image with a identifier tag for easier comprehension
- . at the end tells docker where our Dockerfile is located . means in the same directory, '..' means in the parent directory
- The space after the : is reserved for versioning, so V1, V2 ect

OR

pull a default image directly from docker hub, for example:

`docker pull mongo`

***


### Start a docker container
- `docker run --name docker_container -d DOCKER_IMAGE`
    - starts a new docker container with the name 'docker_container'
- `docker run --rm`
    - Delete the docker container after it exits, useful for debugging.
- `docker run -d IMAGE_NAME`
    - Run a container in detached mode. means that a Docker container runs in the background of your terminal. It does not receive input or display output.
- `docker run -p <outerPort>: <innerPort>`
  -Where -p routes the application port to the main machines port for example 80:8080 will route all port 80 requests into port 8080 on the main machine and will
  be accesable via localhost:8080.
    - `docker run <ImageName>:<ImageVersion>`
        - run a specific version of a image.


***
### View docker content:

- `docker image ls`
    - List your images
- `docker ps -a`
    - List all existing containers (running and not running).
- `docker logs [container name]`
    - Display logs of a container.
***

### Stop containers:

- docker stop [container name]`
    - Stop a specific container.

- `docker stop $(docker ps -a -q)`
    - Stop all running containers.
***
### Delete docker content:

- `docker image rm [image name]`
    - Delete a specific image.
    
- `docker image rm $(docker images -a -q)`
    - Delete all existing images.

- `docker rm [container name]`
    - Deletes only via docker id, example docker rm fb422b078175
    - Delete a specific container (only if stopped).

- `docker rm $(docker ps -a -q)
    - Delete all containers (only if stopped).
***
### Docker compose vs Docker build-run

A Docker compose file recreates the image as well, making restarting containers extremely easy

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration. 
Using Compose is basically a three-step process:

- Define your app’s environment with a Dockerfile so it can be reproduced anywhere.

- Define the services that make up your app in docker-compose.yml so they can be run together in an isolated environment.

- Run docker compose up and the Docker compose command starts and runs your entire app. You can alternatively run docker-compose up using the docker-compose binary.

Running a docker compose command with a specific compose file
`docker-compose -f test-widget-bundles.yml up`

A docker-compose.yml looks like this:

```
version: '3.9'  # optional since v1.27.0
services:
web:
build: .
ports:
- '5000:5000'
volumes:
- .:/code
- logvolume01:/var/log
links:
- redis
redis:
image: redis
volumes:
logvolume01: {}
```
## Exotic commands

***

#### Links:5
- [[general-admin]]
- [[Dockerfile]]
- [[docker-compose.yml]]


