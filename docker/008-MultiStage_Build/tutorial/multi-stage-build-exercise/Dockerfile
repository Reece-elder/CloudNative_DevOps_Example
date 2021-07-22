# Multi stage build syntax

# First we'll start with the build stage using Maven
# Also using AS to define what is the purpose of the container 

# Running Maven AS build stage
FROM maven:latest AS build-stage

# Creating and changing our working directory to /build
WORKDIR /build

# Copying all files from here to the context
COPY . .

# Using Maven to build the app - Why not entrypoint?
RUN mvn clean package


# Second stage - Run time
FROM java:8 AS runtime

# Changing the working directory to where app will be installed
WORKDIR /opt/hello-world

# Copy the JAR file created in build stage to application folder in this stage
# --from is referring to what build stage
COPY --from=build-stage /build/target/hello-world-1.0.0.jar app.jar

# Creating an entrypoint for app
ENTRYPOINT ["/usr/bin/java", "-jar", "app.jar"]
