# Docker tips

Various tips when using Docker.

## Building

Build a image using `Dockerfile` in the same folder:

``` sh
docker build -t <image_name> .
```

## Containers

List all running containers:

``` sh
docker ps
```

List all containers:

``` sh
docker ps -a
```

## Logs

Follow log from a container:

``` sh
docker logs -f <container_name>
docker compose logs -f <container_name>
```

## Prune

Prune all unused images:

``` sh
docker image prune -a
```

Prune all:

``` sh
docker system prune -a
```

More about pruning: https://docs.docker.com/config/pruning/

## Links

- [Docker Cheat Sheet ↗️](https://github.com/wsargent/docker-cheat-sheet)
