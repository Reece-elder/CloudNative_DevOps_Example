# Containers in depth

Containers are lightweight environments COMPLETE with necessary dependencies
Containerised applications include their dependencies so they should run the same every time they're ran

## Docker run

Command to start up a container, looks locally first then searches dockerhub (by default)

docker run <options> <image>:<tag>

Likely Options:
--detached / -d : runs in detached mode (able to use terminal while it is running)
--publish / -p <HOST PORT>:<CONTAINER PORT> : publishes a port, maps a host port to the container port 

    *port mapping help*
    docker run -p [external]:[Internal]

    #example (will open in localhost:8080 to container port 80)
    <diagram showing host connecting to lots and lots of ports>
    docker run -p 8080:80 

--name --name[name_of_container] : Names the container (not the name of the image), if no name is set gives a random name
--env / -e [VAR_NAME]=[VAR_VALUE] : Sets an env var inside the container


docker run -d -p 8080:80 --name nginx_container nginx:latest
access port 80 of public IP 
OR curl localhost:8080

## Exercise - Using an EC2 that has port number 8080 open, create and run an nginx container and access the nginx website



