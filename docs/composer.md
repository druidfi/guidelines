# Composer

Composer is a dependency manager for PHP. See Composer [homepage](https://getcomposer.org/) for more information.

Latest stable version is 2.0.8 (Dec 11th 2020).

## Requirements

- PHP

## Install

Install and setup Composer with PHP and move executable to `/usr/local/bin`:

```
$ php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
$ php composer-setup.php
$ php -r "unlink('composer-setup.php');"
$ chmod +x composer.phar
$ mv composer.phar /usr/local/bin/composer
```

Now you should be able to call Composer everywhere:

```
$ composer --version
```

## Update

Composer can be updated with:

```
$ composer self-update
```

## Downgrade to v1

Composer can be downgraded to version 1 with:

```
$ composer self-update --1
```
