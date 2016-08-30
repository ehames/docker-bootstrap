# docker-bootstrap

Docker bootstrap provides an easy way to ship your docker-compose file.

## How to use it

1. Create a Dockerfile that extends ehames/docker-compose image
1. Copy your docker-compose.yml to te image (default location /etc/docker-compose/docker-compose.yml)
1. Build and upload it to your registry
1. Run the container and all images will be downloaded and launched automatically

