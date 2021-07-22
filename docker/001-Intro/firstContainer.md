# First container to run

When running docker commands start with `docker`

-rm removes the container when it or the daemon exits (background processes)

docker run --rm hello-world

If getting permission denied check you're added to the docker group AND 
`newgrp docker` to force the group to recognise you 