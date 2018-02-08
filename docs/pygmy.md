# Pygmy

Pygmy uses Docker with dnsmasq and ssh-agent containers to easily setup local development environment.

See Pygmy [homepage](https://docs.amazee.io/local_docker_development/pygmy.html) for more information.

## Requirements

- Docker (Linux) or [Docker for Mac](docker_for_mac.md) (OSX/macOS)
- `docker-compose.yml` file in your site repository

## Install 

On Mac you can install Ruby with `brew install ruby` to be able to install gems.

```
$ gem install pygmy
```

## Start Pygmy

Start Pygmy and related services

```
$ pygmy up
```

## Add your SSH key (if using Amazee.io servers)

Note: your key needs to be added to Amazee.io servers before. Ask that in #druid channel in Amazee.io Slack.

```
$ pygmy addkey ~/.ssh/id_rsa
```
