# Local development environment

## Docker based

When ever possible, we prefer Docker based local development.

For sites hosted on Amazee.io, there is additional information [here](https://docs.amazee.io/).

### Requirements

OSX / macOS

- [Docker](docker.md) and [Cachalot](cachalot.md)
- [Docker for Mac](docker_for_mac.md) and [Pygmy](pygmy.md)

Linux

- [Docker](docker.md) and [Pygmy](pygmy.md)

### Setup workflow

- Start [Cachalot](cachalot.md) or [Pygmy](pygmy.md)
- Clone project repository
- Build the codebase
- Start Docker environment with `docker-compose up -d`
- Login to container with `docker-compose exec --user drupal drupal bash`
- Get database and files and put in place
- Develop

## Vagrant based

Currently the default option for most projects. Project is developed on top of infra created for the project. Infra
repository has Vagrant configuration with Ansible provision.

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
