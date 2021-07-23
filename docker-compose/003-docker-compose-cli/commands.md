docker-compose --help / -h

docker-compose down --help / -h


## More specific

docker-compose up - Runs all services in config
    -  d          - Runs in background
    -- build      - Builds images before starting
    -- scale      - Specify the number of services

`` down           - Stops all services

`` build          - Builds images WITHOUT running containers

`` ps             - Returns all running containers

`` exec           - Execute a command in the container

`` logs           - Displays log outputs from running services

`` push           - Pushes images used to registry