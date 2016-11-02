# Local development environment

## Vagrant based

Currently the default option for most projects. Project is developed on top of infra created for the project. Infra repository has Vagrant configuration with Ansible provision.

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

## Docker based



### Requirements

- [Composer](composer.md)
- [Docker for Mac](docker_for_mac.md)
- [Drush](drush.md)

### Setup workflow

- Clone project repository
- Build the codebase
- Start Docker environment with `docker-compose up -d`
- Get database and files and put in place
- Develop
