# DockerIgnore

DockerIgnore is a file placed at root (alongside Dockerfile) that tells Docker what to ignore during image building
Very similar to .gitignore, used to stop credential and unncessary data being accidentally pushed up

Uses same as strict files or wildcards as gitignore

## Exercise

1) Create a directory called 'dockerIgnore exercise'
2) Create an alpine container with a docker file and docker ignore in folder
3) Create a 'credentials' directory and add 'secrets.txt' to directory
4) Exit out of 'credentials and create a 'release-notes.md', 'readme.md' and 'test.js'
5) Using dockerignore, ignore secrets.txt, release-notes.md and test.jd
6) Build the image with a RUN command listing all files
7) Run the container