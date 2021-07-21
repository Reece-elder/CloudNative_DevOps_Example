# Dockerfile

Dockerfiles are sets of instructions to build docker images. 
They contain instructions such as:
- What layer to use as a base
- Where are the files
- What needs to be installed/run first
- What ports are used
- How do you start the application

## Context

Context for Docker files are where the files are.
Your dockerfile should be at the same location as your files

If this is the case `.` means right here

docker build . - using dockerfile HERE, build the files HERE

## Dockerfile example

FROM python:3.7 - using Python 3.7 image
WORKDIR /app - sets /app as the directory to run commands
RUN pip3 install Flask - using pip3 Flask is installed
COPY app.py . - copies the app.py file to the context (working directly)
EXPOSE 5000 - Opens port 5000
ENTRYPOINT ["python","app.py"] - What commands are used to run the app

All Dockerfile instructions are all caps

## Docker Build

The command to build an image from a dockerfile is
`docker build [context]`
`docker build .`

## Tutorial 

Create a new folder and create a file called Dockerfile there
Create an index.html with whatever info you want
Create the dockerfile 
`docker build -t <image_name>`
`docker run -d -p <external_port>:<internal_port> --name <container_name> <image_name>`

## Exercise

Do it yourself

Extra work - Do the tutorial