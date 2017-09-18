# Cachalot (Mac only)

Cachalot creates and controls a virtual machine for Docker environment by Amazee.io. It's meant only for OSX/macOS.

See documentation on docs.amazee.io: https://docs.amazee.io/local_docker_development/os_x_cachalot.html

## Requirements

- OSX/macOS
- [Brew](brew.md)
- [Docker](docker.md)
- [VMware Fusion](vmware_fusion.md)

## Install

```
$ brew tap amazeeio/cachalot
$ brew install cachalot
```

## Start Cachalot

Create Cachalot machine with [VMware Fusion](vmware_fusion.md) and start related services

```
$ cachalot create --provider vmware && eval $(cachalot env)
```

## Add Env variables to you shell

If you are using Bash Shell. We suggest adding that to your ~/.bash_profile so that the environment variables are
available all times:

```
$ echo "eval \$(cachalot env)" >> ~/.bash_profile
```

Or for zsh users:

```
$ echo "eval \$(cachalot env)" >> ~/.zshrc
```

Or for fish users:

```
$ echo "eval (cachalot env)" >> ~/.config/fish/config.fish
```
