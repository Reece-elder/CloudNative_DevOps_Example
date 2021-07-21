# Docker file instructions

Dockerfiles have a ranfe of instructions, if you're curious about what you can do and its not here.. look through the docs

## Key instuctions

<Write down instruction and add to Dockerfile>

FROM - What base image to use
WORKDIR - Sets the current working directory, default is /
RUN - Run commands on containers during build

## Exercise - Create an nginx container, set the working directory to be /debug and run a command to create a file
Bonus points - Using > add some text to the file

ADD [source] [target]- Adds files to the target

COPY - Copies files to the container (similar to add but is preffered method)

EXPOSE - Informs docker of the port container is listening on, mainly a documentation things

## Exercise add two new files to your /usr/share/nginx/html using add and copy. Expose the port number

ENV [var_name] = [var_value] 

LABEL [key]=[value] - Used for adding metadata, metadata can be accessed with `docker inspect`

ENTRYPOINT - The final command, what is the final thing this container should do to start

## Exercise, using env vars create a new file with the value of the env var


