# Drush

See Drush [homepage](http://www.drush.org/) for more information.

Latest stable versions are (Dec 11th 2020):

- 8.4.5 for Drupal 7 
- 10.3.6 for Drupal 8+

## Requirements

- Environment with PHP and Composer e.g. Docker container

## Install to project

Install Drush with Composer:

```
$ composer req drush/drush
```

## Tips

Drush has many dependencies so sometimes if might block e.g. updating Drupal core.

In that case you can do this:

```
$ composer remove drush/drush
$ composer update -W "drupal/core-*"
$ composer req drush/drush
```
