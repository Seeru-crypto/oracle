### Example of docker file

https://hub.docker.com/_/mongo

## Docker setup

1. install and setup docker
   1. See [See docker file for more info](../general admin/dev-tools/docker-commands.md)
2. Create default mongo Docker image 
   1. `docker pull mongo`
3. Run the created docker image
   1. `docker run -p 27017:27017 --name mongo_container -d mongo`
   
To use mongoDb´s a connection string has to be provided. More [info](https://docs.mongodb.com/manual/reference/connection-string/)

`mongodb://localhost:27017`




**Out of the box mongo has a get limit of 20 documents**