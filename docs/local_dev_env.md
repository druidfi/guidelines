# Local development environment

## Docker based (recommended)

When ever possible, we prefer Docker based local development.

For sites hosted on Amazee.io, there is additional information [here](https://docs.amazee.io/).

### Requirements

- [Pygmy](pygmy.md) (for Amazee.io powered projects)
- [Stonehenge](https://github.com/druidfi/stonehenge)

macOS

- [Docker for Mac](docker_for_mac.md)

Linux

- [Docker](docker.md)

Tips for Docker

- [Docker tips](docker-tips.md)

### Setup workflow

- Start [Pygmy](pygmy.md) or [Stonehenge](https://github.com/druidfi/stonehenge)
- Clone project repository
- Build the codebase
- Start Docker environment with
- Develop

## Vagrant based

Older projects are developed on top of infra created for the project. Infra
repositories have Vagrant configuration with Ansible based provision.

### Requirements

- [Ansible](ansible.md)
- [Vagrant](vagrant.md)
- [VMWare Fusion](vmware_fusion.md) or Virtualbox
- Access to project infra repository
- Access to project repository

### Setup workflow

- Clone infra repository
- Clone project repository
- Build the codebase
- Create Vagrant machine with `vagrant up` (this will also provision it)
- Get database and files and put in place
- Put IP address to /etc/hosts
- Develop
