docker-compose up -d - Runs the config file and creates the services

docker-compose ps - Lists the compose as well as the chosen port

curl localhost:<large port number>

Exercise - Using a docker compose file deploy an alpine container (it wont stay up)

## Scale your application

docker-compose up -d --scale nginx=3

Try to run the command again, what happens?

docker-compose down -rmi all