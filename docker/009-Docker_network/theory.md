# Docker Networks

Up to now our Docker containers haven't been able to talk to each other, all existing seperately

<diagram showing different containers>

## Networking

When running docker run containers are assigned to network 'default'
All containers have a Private IP in their network to allow communication.. but hard coding IP is bad
`docker network ls` shows all  current networks
`docker inspect <container_id>` shows IP address of container

<diagram with front, backend and mysql>

## Network types

### Bridge network
- Multiple containers on a single host, can specify further to split up host into seperate networks

### Overlay network
- Allows connection across multiple hosts OR nodes, using docker swarm

### Host network
- Uses the network of the host machine rather than assigning the container an IP address

Exercise - Create 3 nginx containers using 3 different ports and look at the network IP of each

## Bridge Networks

When connecting containers to one another use 'User defined bridge networks' 
- Allows connection with DNS Name based on containers name 
<Diagram of nginx on port 80 and app on port 8080, nginx can connection http://application:8080> 
- Two containers in the same network can communicate with eachother, by putting in seperate networks easy to split
- Containers can be connected/disconnected from network without stopping container