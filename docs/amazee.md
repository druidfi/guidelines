# Amazee.io

See OS X cachalot [Docs Amazee](https://docs.amazee.io/local_docker_development/os_x_cachalot.html) for more information.

## Install

OSX/macOS using [Brew](brew.md)

```
$ brew install docker docker-compose docker-machine
```
Cachalot [Cachalot](cachalot.md)

```
$ brew tap amazeeio/cachalot
```

```
$ brew install cachalot
```
## Create the default machine

### Create the default machine using VMWARE

Create the default VM with [VMWare Fusion](vmware_fusion.md) driver

```
$ docker-machine create default -d vmwarefusion && eval $(docker-machine env default)
```

Create the VM and start services with:
```

$ cachalot create --provider vmware
```

### Create the default machine using Virtualbox

Create the default VM with virtualbox driver

```
$ docker-machine create default -d virtualbox && eval $(docker-machine env default)
```
Create the VM and start services with:

```

$ cachalot create --provider virtualbox
```

## Start the Docker VM and services
```
$ amazeeio-cachalot up
```
Set environment variables
```
$ eval $(cachalot env)
```

## Project

1. Copy the desired example file into your Drupal directory (see descriptions below). https://github.com/amazeeio/docker/blob/master/example-docker-compose-drupal.yml
2. Rename the file to docker-compose.yml
3. Edit the file according to your needs, change at least the hostname
4. ```$ docker-compose pull```
5.  ```$ docker-compose up -d```
6. Connect via docker-compose 
    1. ```$ docker-compose exec --user drupal drupal bash```

### Connect to MySQL on Sequel Pro
See Connect to MySQL in Docker Container [Docs Amazee](https://docs.amazee.io/local_docker_development/connect_to_mysql_from_external.html) for more information.

Docker assigns a randomly published port for MySQL during each container start. This is done to prevent port collisions. To get the correct MySQL port for the container:

```
$ docker port changeme.net.docker.amazee.io
```
OR
```
$ docker-compose port drupal 3306
```

- IP/Host: docker.amazee.io
- Port: published port from container
- Username: drupal
- Password: drupal
- Database: drupal

## Some tips for problems

### Log files found

Both nginx and php logs are in a logs directory in your home folder
```
drupal@changeme.docker.amazee.io:~/logs

```

### Remove docker container

Check Docker containers
```
$ docker ps
```

Remove Docker container
```
$ docker rm <container> 
```
Remove All Docker container
```
$ docker-machine rm -f $(docker-machine ls -q);

```

### Destroy VM
Stop and delete all traces of the VM
```
amazeeio-cachalot destroy      
```
Create the default machine