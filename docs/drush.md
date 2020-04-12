# Drush

See Drush [homepage](http://www.drush.org/) for more information.

Latest stable versions are 8.1.32 and 10.2.2 (Apr 12th 2020).

## Notes

- We recommend you use Drush in your Docker containers
- We recommend using Drush 10 for new projects (comes with Spell).

## Requirements

- PHP
- [Composer](composer.md)

## Global install

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
