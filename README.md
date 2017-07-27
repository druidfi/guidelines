# Druid technical guidelines
Various guidelines related to technical work

## Environments

Read about [environments](docs/environments.md) like development, testing, staging and production.

## Local development environment

See general notes about local development [here](docs/local_dev_env.md).

## Software

When getting a new computer, you can use [druid-toolbelt](https://github.com/druidfi/druid-toolbelt) on OSX/macOS to install most common tools: 

```
$ sh -c "$(curl -fsSL https://github.com/druidfi/druid-toolbelt/raw/master/install.sh)"
```

### Software specific instructions

- [Ansible](docs/ansible.md) \*
- [Brew](docs/brew.md) \*
- [Cachalot](docs/cachalot.md) 
- [Composer](docs/composer.md) \*
- [Docker](docs/docker.md) NOTE! This is still the faster way to run Docker on Mac!
- [Docker for Mac](docs/docker_for_mac.md)
- [Drush](docs/drush.md) \*
- [Pygmy](docs/pygmy.md)
- [Vagrant](docs/vagrant.md) \*
- [VMWare Fusion](docs/vmware_fusion.md) \*

\* included in [druid-toolbelt](https://github.com/druidfi/druid-toolbelt)

## Infra template

- [GitHub-repository](https://github.com/druidfi/ansible-project-infra-template)

## Drupal 8 project template

- [GitHub-repository](https://github.com/druidfi/drupal-project)

## Drupal 7 project template

- [GitHub-repository](https://github.com/druidfi/d7-template)

## Continuous Delivery

- [Buddy](docs/buddy.md)

## Technical solutions

- [Let's Encrypt and Certbox](docs/letsencrypt.md)
- [SSO with PHP](docs/sso.md)

## Misc

- Developing on Linux (TODO)
- Using SMTP & SendGrid 
