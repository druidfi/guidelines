# Composer

Composer is a dependency manager for PHP. It is used e.g. by [Drupal 8 project template](https://github.com/druidfi/d8-template).

See Composer [homepage](https://getcomposer.org/) for more information.

## Requirements

- PHP

## Install

Install and setup Composer with PHP and move executable to `/usr/local/bin`:

```shell
$ php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
$ php composer-setup.php
$ php -r "unlink('composer-setup.php');"
$ chmod +x composer.phar
$ mv composer.phar /usr/local/bin/composer
```

Now you should be able to call Composer everywhere:

```shell
$ composer --version
```

## Update

Composer can be updated with:

```shell
$ composer self-update
```
