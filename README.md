# Druid technical guidelines

Various guidelines related to technical work

## Local development environments

- [Docker Desktop](docs/docker.md)
- [Druid CLI ↗️](https://github.com/druidfi/cli) - Druid internal CLI tool (private)
- [GitHub CLI ↗️](https://cli.github.com/) and authenticated with `gh auth login` to interact with Github repositories
- [Stonehenge ↗️](https://github.com/druidfi/stonehenge) - Docker toolset supporting multiple projects
- General notes about [local development environment](docs/local_dev_env.md)
- [terminology](docs/environments.md) for the different environments

## Project tools and templates

- [Spell ↗️](https://github.com/druidfi/spell) - Create a new Drupal 10 project from template
- [Docker images ↗️](https://github.com/druidfi/docker-images) - General use Docker images for projects
- [druidfi/omen ↗️](https://github.com/druidfi/omen) - Drupal 9+ configurator. Detects env related configuration and sets them for you.
- [druidfi/tools ↗️](https://github.com/druidfi/tools) - Drupal 9/10, Symfony & WordPress + JS toolset for every project

## Drupal tutorials

- [Emails](docs/drupal/emails.md)
- [Private files](docs/drupal/private_files.md)
- [Stage File Proxy](docs/drupal/stage_file_proxy.md)
- [CloudFront CDN](docs/drupal/cdn.md)
- [Drupal and Next.js with next-drupal ↗️](https://next-drupal.org/)

## Technical tutorials

- [SSO with PHP](docs/sso.md)
- [How to setup Xdebug + PhpStorm in Docker (Amazee.io)](docs/amazee_xdebug.md)
- [Lagoon CLI](docs/lagoon_cli.md)
- [Xdebug setup for VSCode](docs/vscode_xdebug.md)

## Software and tools

- [List of software](docs/software.md) used and instructions
- macOS [scripts](docs/macos_scripts.md) for installing software
- See [github.com/back-2-95/dotfiles ↗️](https://github.com/back-2-95/dotfiles/) for how to setup macOS

## Continuous Delivery (CD) or GitOps

Git based Continuous Delivery solutions we use:

- [Amazee.io Lagoon ↗️](https://lagoon.readthedocs.io/en/latest/using_lagoon/build_deploy_process/)
- Github Actions - see [example workflows](docs/gha.md)
- [Wodby ↗️](https://wodby.com/docs/)
- [Vercel ↗️](https://vercel.com/)

## Misc

- [GDPR guidelines](docs/gdpr.md)
- [PR templates](docs/prtemplate.md)
