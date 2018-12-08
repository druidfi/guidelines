# Druid technical guidelines

Various guidelines related to technical work

## Local development environments

- [Pygmy](docs/pygmy.md) - Amazee.io specific Docker toolset for Drupal projects.
- [StoneHenge](https://github.com/druidfi/stonehenge) - Docker toolset supporting multiple projects

See general notes about local development [here](docs/local_dev_env.md). Also check [terminology](docs/environments.md)
for the different environments.

## Software and tools

See [list of software](docs/software.md) used and instructions.

- [macOS scripts for software](docs/macos_scripts.md)

## Project tools and templates

- [Spell](https://github.com/druidfi/spell) - Create a new Drupal 8 project

Create a new Drupal 8 project:

```
$ composer create-project druidfi/spell:dev-master <project-path> --no-interaction
```

- [Mona](https://github.com/druidfi/mona) - Drupal 7 project template with Composer
- [Ansible based infra template](https://github.com/druidfi/ansible-project-infra-template) (private)

## Continuous Delivery (CD)

- [Buddy](docs/buddy.md)

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

