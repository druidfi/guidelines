# Drupal and Stage File Proxy

Stage File Proxy lets you update the database of your local development instance without having to update your files directory. Stage File Proxy transfers each requested file just in time when it is requested. This is especially useful for large sites with huge numbers of files. If you only visit 2 pages and only need 10 remote files to serve those pages, Stage File Proxy will only transfer those 10 files.

See the [module on drupal.org](https://www.drupal.org/project/stage_file_proxy) for more information.

## How to setup Stage File Proxy

1. Install the module via composer
    ``` zsh
    composer require drupal/stage_file_proxy --dev
    ```

2.  Make sure your make files are up to date, in the project's root directory, run
    ``` zsh
    make self-update
    ```

3.  Add configurations for the module to development environment. Modify (or create) `public/sites/default/dev.settings.php` and add
    ``` php
    $config['stage_file_proxy.settings']['origin'] = 'https://url-to-production.fi';
    ```

4.  Add --skip-module on cim and cex. Modify (or create) `public/sites/default/drushrc.php` and add

    ``` php
    <?php
     $drush_ignore_modules = [
      'stage_file_proxy',
    ];
    $command_specific['config-export']['skip-modules'] = $drush_ignore_modules;
    $command_specific['config-import']['skip-modules'] = $drush_ignore_modules;

    ```

5.  Exclude module configurations. Modify `public/sites/default/settings.php` and add

    ``` php
    $exclude_module_config = [
        'stage_file_proxy'
    ];
    $settings['config_exclude_modules'] = $exclude_module_config;

    ```

6.  Create project specific make file in `tools/make/project`, for example `stage-file-proxy.mk`

    ``` make
    ## if environment is not production
    ifneq ($(ENV),production)
        ## in this case added after make fresh
        DRUPAL_FRESH_TARGETS += stagefile drush-cr

        ## in this case added during make fresh
        SYNC_TARGETS += stagefile drush-cr
    endif
    PHONY += stagefile
    stagefile: ## enable stage_file_proxy module
       $(call step,Enable stage_file_proxy...)
       $(call drush_on_${RUN_ON},en stage_file_proxy -y)
    ## Override the original file sync functionality
    PHONY += drush-sync-files
    drush-sync-files:
    ifeq ($(DRUPAL_SYNC_FILES),yes)
       $(call step, Override file sync with stage file proxy...)
    endif
    ```