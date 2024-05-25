# Docker Desktop

> [!NOTE]  
> On macOS you should use Orbstack instead.

See Docker [homepage ↗️](https://www.docker.com/) for more information.

## Install

### macOS

Install Docker Desktop using [Brew](brew.md)

```console
brew install --cask docker
```

Or download Docker Desktop manually for:

- [Mac with Intel chip ↗️](https://desktop.docker.com/mac/main/amd64/Docker.dmg)
- [Mac with Apple chip ↗️](https://desktop.docker.com/mac/main/arm64/Docker.dmg)

## Commandline

Check Docker version

```console
docker version
```

Check Docker containers

```console
docker ps
```

Pull all images with prefix (here `druidfi`):

```console
docker images | awk '(NR>1) && ($2!~/none/ && $1 ~ /^druidfi/) {print $1":"$2}' | xargs -L1 docker pull
```

## Links

- [Docker tips](docker-tips.md)
