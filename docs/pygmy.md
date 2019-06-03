# Pygmy

Pygmy uses Docker with dnsmasq and ssh-agent containers to easily setup local development environment.

See Pygmy [homepage](https://pygmy.readthedocs.io) for more information.

## Requirements

- [Docker](docker.md)
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

### On Ubuntu

```
$ pygmy up --no-resolver
```

## Add your SSH key (if using Amazee.io servers)

Note: your key needs to be added to Amazee.io servers before. Ask that in #druid channel in Amazee.io Slack.

## Using custom key (and not ~/.ssh/id_rsa)

```
$ pygmy addkey /path/to/some/custom/key
```
