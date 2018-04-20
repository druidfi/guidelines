# Druid technical guidelines

Various guidelines related to technical work

## Environments

Read about [environments](docs/environments.md) like development, testing, staging and production.

## Local development environment

See general notes about local development [here](docs/local_dev_env.md).

## Software and tools

See [list of software](docs/software.md) used and instructions.

## Project tools and templates

- [Spell - Create a new Drupal 8 project](https://github.com/druidfi/spell) (public)

Create a new Drupal 8 project:

```
$ composer create-project druidfi/spell:dev-master <project-path> --no-interaction
```

- [Ansible based infra template](https://github.com/druidfi/ansible-project-infra-template) (private)
- [Drupal 7 project template](https://github.com/druidfi/d7-template) (private)

## Continuous Delivery

- [Buddy](docs/buddy.md)

## Technical solutions

- [Let's Encrypt and Certbox](docs/letsencrypt.md)
- [SSO with PHP](docs/sso.md)
- [How to setup Xdebug + PhpStorm in Docker (Amazee.io)](docs/amazee_xdebug.md)
- [How to analyze logs from Amazee hosted site](docs/amazee_logs.md)
- [How to setup CloudFront CDN for Drupal 8 site](docs/cdn_drupal8.md)

## Misc

- [GDPR guidelines](docs/gdpr.md)
- Developing on Linux (TODO)
- Using SMTP & SendGrid
