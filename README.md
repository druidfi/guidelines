# Druid technical guidelines

Various guidelines related to technical work

## Local development environments

- [StoneHenge](https://github.com/druidfi/stonehenge) - Docker toolset supporting multiple projects

See general notes about [local development environment](docs/local_dev_env.md). Also check [terminology](docs/environments.md)
for the different environments.

## Software and tools

See [list of software](docs/software.md) used and instructions.

- [macOS scripts for software](docs/macos_scripts.md)

## Project tools and templates

- [Spell](https://github.com/druidfi/spell) - Create a new Drupal 8 project from template
- [Docker images](https://github.com/druidfi/docker-images) - General use Docker images for projects
- [druidfi/omen](https://github.com/druidfi/omen) - Drupal 8+ configurator. Detects env related configuration and sets them for you.
- [druidfi/tools](https://github.com/druidfi/tools) - Drupal 7/8 toolset for every project

## Continuous Delivery (CD) or GitOps

Git based Continuous Delivery solutions we use:

- [Amazee.io Lagoon](https://lagoon.readthedocs.io/en/latest/using_lagoon/build_deploy_process/)
- [Buddy](docs/buddy.md)
- Stonehenge Server (TODO)
- Wodby (TODO)

## Technical tutorials

- [Let's Encrypt and Certbox](docs/letsencrypt.md)
- [SSO with PHP](docs/sso.md)
- [How to setup Xdebug + PhpStorm in Docker (Amazee.io)](docs/amazee_xdebug.md)
- [How to analyze logs from Amazee hosted site](docs/amazee_logs.md)
- [How to setup CloudFront CDN for Drupal 8 site](docs/cdn_drupal8.md)
- [Using SMTP & SendGrid](docs(sendgrid.md)) (TODO)

## Misc

- [GDPR guidelines](docs/gdpr.md)
- Developing on Linux (TODO)
