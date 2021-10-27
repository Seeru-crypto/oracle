# Docker
## Docker general setup
- install docker, with admin privileges
- [download](https://docs.docker.com/get-docker/)


## recurring commands

Image commands
To build a new image, cd to the Dockerfile location and enter the command: docker build -t <ImageName>:<Version> .
-t flags our newly created image with a identifier tag for easier comprehension
The . at the end tells docker where our Dockerfile is located . means in the same directory, ".." means in the parent directory ect
The space after the : is reserved for versioning, so V1, V2 ect


To create and run a new container:   docker run --name <ContainerName> -dp 3000:3000 <ImageName>:<ImageVersion>
Where -p routes the application port to the main machines port for example 80:8080 will route all port 80 requests into port 8080 on the main machine and will
be accesable via localhost:8080.
-d detached mode, so that the app can run in the background
--name newly created container tag
OR
you can also run docker run -d -p 3000:3000 <ImageName>:<ImageVersion>



    docker build -t byk-widget .
    
    
    docker run -dp 8080:80 byk-widget
    
    
    
    
    docker image build --tag fredoj/firstimage .
    OR
    docker build -t python-test .
    
    
    To run an image
    
    docker run python-test
    OR
    docker container run --name web -d -p 8080:80 <YourDockerID>/firstimage
    
    





## Exotic commands

### View docker content:

    - docker image ls
        - List your images
    - docker ps -a
        - List all existing containers (running and not running).
    - docker logs [container name]
        - Display logs of a container.
### Stop containers:

    - docker stop [container name]
        - Stop a specific container.
    
    - docker stop $(docker ps -a -q)
        - Stop all running containers.
### Delete docker content:


    - docker image rm [image name]
        - Delete a specific image.
        
    - docker image rm $(docker images -a -q)
        - Delete all existing images.
    
    - docker rm [container name]
        - Delete a specific container (only if stopped).
    
    - docker rm $(docker ps -a -q)
        - Delete all containers (only if stopped).


### Docker compose vs Docker build-run

A dcoker compose file recreates the image as well, making restarting containers extremely easy


    Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.
    
    Using Compose is basically a three-step process:
    
    Define your app’s environment with a Dockerfile so it can be reproduced anywhere.
    
    Define the services that make up your app in docker-compose.yml so they can be run together in an isolated environment.
    
    Run docker compose up and the Docker compose command starts and runs your entire app. You can alternatively run docker-compose up using the docker-compose binary.

A docker-compose.yml looks like this:


        version: "3.9"  # optional since v1.27.0
        services:
        web:
        build: .
        ports:
        - "5000:5000"
        volumes:
        - .:/code
        - logvolume01:/var/log
        links:
        - redis
        redis:
        image: redis
        volumes:
        logvolume01: {}


#### Links:
- [[general-admin]]
- [[Dockerfile]]
- [[docker-compose.yml]]


