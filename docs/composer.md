# Composer

Composer is a dependency manager for PHP. See Composer [homepage ↗️](https://getcomposer.org/) for more information.

## Requirements

- PHP

## Install with Brew (macOS)

``` sh
brew install composer
```

## Install

Install and setup Composer with PHP and move executable to `/usr/local/bin`:

``` sh
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
chmod +x composer.phar
mv composer.phar /usr/local/bin/composer
```

Now you should be able to call Composer everywhere:

``` sh
composer --version
```

## Update

Composer can be updated with:

``` sh
composer self-update
```
