# Drupal and Stage File Proxy

Stage File Proxy transfers each requested file just in time when it is requested. This is especially useful for large
sites with huge numbers of files. If you only visit 2 pages and only need 10 remote files to serve those pages, Stage
File Proxy will only transfer those 10 files.

See the [module on drupal.org ↗️](https://www.drupal.org/project/stage_file_proxy) for more information.

## Requirements

- Drush 11

## How to setup Stage File Proxy

Install the module with Composer:

``` sh
composer require drupal/stage_file_proxy --dev
```

Add configurations for the module to development environment. Modify (or create)
`public/sites/default/dev.settings.php` and add:

``` php
// Stage file proxy origin - no trailing slash.
$config['stage_file_proxy.settings']['origin'] = 'https://url-to-production.fi';
```

Add the following to the `.env` file:

``` sh
# Enable these modules on local
DRUPAL_ENABLE_MODULES="stage_file_proxy"
```
