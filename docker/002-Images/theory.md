# Images

Docker images are files used to make snapshots. 
Isolated `snapshot` of an environment and used to package applications
Are read only and layered to create containers.

## Customisation and usage

Say you wanted to containerise a Java app..
You'd use existing images for the Operating System and Java.. 
And add your own layer which is your custom files/codes

- layer 1 - OS (Linux/ubuntu)
- layer 2 - Java (application)
- layer 3 - Your files (custom files/dependencies)

+ Multiple containers can use the same layer/image
+ Time saved as no need to install everything every time

## Docker Registry

<Sign up to DockerHub>
Dockerhub stores images allowing you to use as a layer or a whole app any public images

`docker login` logs in to Dockerhub (asks for user and pass)

`docker search <keyword>` will search dockerhub for images matching that keyword 
(look for official)

`docker pull <image>` will pull that official image down

`docker images` lists all images on this computer
REPOSITORY - Name of the image
TAG - Version (default is latest)
IMAGE ID - ID of that image
CREATED - When was this image created
SIZE - size of image

`docker tag <image> <author>/<app_name>:<tag>` 
`docker tag alpine reeceelder123/alpine_reece:10`
Renames the image to reeceelder123/alpine_reece

`docker push <author>/<image name>` - pushes docker image up to dockerhub

## Image reference

A full images reference follows this:
<HOST>/<AUTHOR>/<APPLICATION>/<TAG>
Host - the registry, default is Dockerhub
Author - who made it (reeceelder123)
Application - Who made it
Tag - what version

## Exercise 
- Login to your dockerhub account on the CLI
- Pull the official 'BusyBox' image
- Rename it to be BusyBox_<your name>
- Push the renamed image up to dockerhub 
- Delete all existing images 