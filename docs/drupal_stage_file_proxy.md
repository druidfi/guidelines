# Drupal and Stage File Proxy

Stage File Proxy lets you update the database of your local development instance without having to update your files directory. Stage File Proxy transfers each requested file just in time when it is requested. This is especially useful for large sites with huge numbers of files. If you only visit 2 pages and only need 10 remote files to serve those pages, Stage File Proxy will only transfer those 10 files.

See the [module on drupal.org](https://www.drupal.org/project/stage_file_proxy) for more information.

## Requirements

- Drush 10

## How to setup Stage File Proxy

1. Install the module via composer
    ``` sh
    composer require drupal/stage_file_proxy --dev
    ```

2.  Add configurations for the module to development environment. Modify (or create) `public/sites/default/dev.settings.php` and add
    ``` php
    // Stage file proxy origin - no trailing slash.
    $config['stage_file_proxy.settings']['origin'] = 'https://url-to-production.fi';
    ```

3.  Exclude module configurations. Modify `public/sites/default/settings.php` and add

    ``` php
    $exclude_module_config = [
        'stage_file_proxy'
    ];
    $settings['config_exclude_modules'] = $exclude_module_config;

    ```

4.  Add the following to the `.env` file

    ``` sh
    # Enable these modules on local
    DRUPAL_ENABLE_MODULES="stage_file_proxy"
    ```
