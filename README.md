# Druid technical guidelines

Various guidelines related to technical work

## Local development environments

- [Docker](docs/docker.md)
- [Druid CLI ↗️](https://github.com/druidfi/cli) - Druid internal CLI tool (private)
- [GitHub CLI ↗️](https://cli.github.com/) and authenticated with `gh auth login` to interact with Github repositories
- [Stonehenge ↗️](https://github.com/druidfi/stonehenge) - Docker toolset supporting multiple projects
- General notes about [local development environment](docs/local_dev_env.md)
- [terminology](docs/environments.md) for the different environments

## Project tools and templates

- [Spell ↗️](https://github.com/druidfi/spell) - Create a new Drupal 10 project from template
- [Docker images ↗️](https://github.com/druidfi/docker-images) - General use Docker images for projects
- [druidfi/omen ↗️](https://github.com/druidfi/omen) - Drupal 9+ configurator. Detects env related configuration and sets them for you.
- [druidfi/tools ↗️](https://github.com/druidfi/tools) - Drupal 7/8/9/10, Symfony & WordPress toolset for every project

## Technical tutorials

- [Drupal and emails](docs/drupal_emails.md)
- [Drupal and private files](docs/drupal_private_files.md)
- [Drupal and Stage File Proxy](docs/drupal_stage_file_proxy.md)
- [Drupal and CloudFront CDN](docs/cdn_drupal.md)
- [Drupal and Next.js with next-drupal ↗️](https://next-drupal.org/)
- [SSO with PHP](docs/sso.md)
- [How to setup Xdebug + PhpStorm in Docker (Amazee.io)](docs/amazee_xdebug.md)

## Software and tools

- [list of software](docs/software.md) used and instructions
- macOS [scripts](docs/macos_scripts.md) for installing software

## Continuous Delivery (CD) or GitOps

Git based Continuous Delivery solutions we use:

- [Amazee.io Lagoon ↗️](https://lagoon.readthedocs.io/en/latest/using_lagoon/build_deploy_process/)
- Github Actions - see [example workflows](docs/gha_workflows.md)
- [Wodby ↗️](https://wodby.com/docs/)
- [Vercel ↗️](https://vercel.com/)

## Misc

- [GDPR guidelines](docs/gdpr.md)
