# Using Python as a base
FROM python:3.7

# Create and set work directory inside image as /app
WORKDIR /app 

# Using pip3 install flask
RUN pip3 install Flask

# copy the app.py created into the working directory
COPY app.py .

EXPOSE 5000

#Run python app.py on container start up
ENTRYPOINT ["python", "app.py"]