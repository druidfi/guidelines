# Drush

See Drush [homepage ↗️](http://www.drush.org/) for more information.

- 8.4.x for Drupal 7
- 11.4.x for Drupal 9 and 10

## Requirements

- Environment with PHP and Composer e.g. Docker container in the project
- Connection to the database

## Install to project

Install Drush with Composer:

```
composer req drush/drush
```

## Tips

Drush has many dependencies so sometimes if might block e.g. updating Drupal core.

In that case you can do this:

```
composer remove drush/drush
composer update -W "drupal/core-*"
composer req drush/drush
```
