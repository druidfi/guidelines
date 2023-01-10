# Docker tips

Various tips when using Docker.

## Building

Build a image using Dockerfile in the same folder:

```
docker build -t <image_name> .
```

## Containers

List all running containers:

```
docker ps
```

List all containers:

```
docker ps -a
```

## Logs

Follow log from a container:

```
docker logs -f <container_name>
docker-compose logs -f <container_name>
```

## Prune

Prune all unused images:

```
docker image prune -a
```

Prune all:

```
docker system prune -a
```

More about pruning: https://docs.docker.com/config/pruning/

## Links

- [Docker Cheat Sheet ↗️](https://github.com/wsargent/docker-cheat-sheet)
