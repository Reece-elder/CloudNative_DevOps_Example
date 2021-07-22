# Multistage Builds

Multistage builds allow you to seperate build stages of images into different containers

- Keeps container sizes down, as unused containers can be scrapped
- Final image only contains the executable files created in build stage

<Containers are like a conveyor belt different complexity and size machines do differnt things.. Forge for creating metal for cans is more powerful than machine putting label on>

Used for compiled languages such as Java 
- Compiled languages are fed into a compiler (turns into binary) before executing code
- Interpreted languages are executed step by step with no need to compile

<dev compile diagram>
<Maven with Java creates a .jar>

## Multi Stage Builds

<Diagram showing two containers>
1) Perform compiling in build tool
2) Copy build artefact from build to runtime
3) Delete build tool resources
4) Run executable in runtime container

## Tutorial

1) Create a new directory
2) Git clone down the repo and cd to it
3) Create a Dockerfile and fill out file
4) docker build -t app .
5) docker run -d -p 80:8080 --name app app

## Exercise 

Update the html page
Create your own multi stage build 
curl localhost

Deploy your project? 