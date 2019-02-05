# Drush

See Drush [homepage](http://www.drush.org/) for more information.

Latest stable versions are 8.1.18 and 9.5.2 (Feb 5th 2019).

## Notes

- We recommend you use Drush in your Docker containers
- We recommend using Drush 9 for new projects.

## Requirements

- PHP
- [Composer](composer.md)

## Install

Install Drush with Composer:

```
$ composer global require drush/drush
```

Now you should be able to call Drush everywhere:

```
$ drush version
```

## Update

You can update Drush with Composer:

```
$ composer global update
```
