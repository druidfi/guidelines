# Docker Desktop

See Docker [homepage ↗️](https://www.docker.com/) for more information.

## Install

### macOS

Install Docker Desktop using [Brew](brew.md)

``` sh
brew install --cask docker
```

Or download Docker Desktop manually for:

- [Mac with Intel chip ↗️](https://desktop.docker.com/mac/main/amd64/Docker.dmg)
- [Mac with Apple chip ↗️](https://desktop.docker.com/mac/main/arm64/Docker.dmg)

### Linux

There are different installation steps for different Linux distributions.

See this guide for some general ones: https://runnable.com/docker/install-docker-on-linux

## Commandline

Check Docker version

``` sh
docker version
```

Check Docker containers

``` sh
docker ps
```

Pull all images with prefix (here `druidfi`):

``` sh
docker images | awk '(NR>1) && ($2!~/none/ && $1 ~ /^druidfi/) {print $1":"$2}' | xargs -L1 docker pull
```

## Links

- [Docker tips](docker-tips.md)
