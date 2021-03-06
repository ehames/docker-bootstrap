# docker-bootstrap

Docker bootstrap provides an easy way to ship your docker-compose file.

## How to use it

1. Create a Dockerfile that extends ehames/docker-bootstrap image (https://hub.docker.com/r/ehames/docker-bootstrap/)
1. Copy your docker-compose.yml to the image (default location /etc/docker-compose/docker-compose.yml)
    a. If you copy the file to a different location, set the COMPOSE_FILE environment variable.
1. Build and upload it to your registry
1. Run the container and all images will be downloaded and launched automatically:
```bash
docker run -it --rm  -v /var/run/docker.sock:/var/run/docker.sock <your-image>
```
