# Other Docker Commands

`docker ps` returns a table of all containers with data
`docker logs <CONTAINER_NAME>` returns the logs of a container

## Start, stop, rename, remove

`docker start [CONTAINER_NAME]` starts a stopped container
`docker stop [CONTAINER_NAME]` stops a started container

`docker rm [CONTAINER_NAME]` Removes a stopped container
--force / -f : forces removal (if its still running)

`docker rename [OLD_NAME] [NEW_NAME]` renames a container

Exercise:
- Create an nginx container 
- Stop the container
- Start the container 
- Rename the container
- Remove the container (1 missing step here..)


## Executing commands

docker exec - allows you to execute commands inside a container
docker exec [CONTAINER_NAME] [COMMAND_TO_RUN]

`docker exec alpine_container touch newFile.txt`
Creates a file called newFile.txt in the container

--interactive : keeps the shell open (more commands)
--tty : allows you to exec with no initial command

docker exec -it [CONTAINER_NAME] [INTERPRETER]
`docer exec -it alpine_container bash`
Opens the container as a bash script to work with

docker prune -a - removes EVERYTHING

Exercise 
- Create and run an alpine container
- Create a new file in the container
- Using docker exec find the file in the container

Exercise
- Do Jenkins Tutorial


