# How to setup private files in Drupal?

Both in Lagoon and Wodby, private files are stored under public files folder and platform takes care that the `private`
folder cannot be accessed via browser.

This way e.g. `drush rsync` command will sync both public and private files at the same time.

## Lagoon

In settings file:

```
// Private files path.
$settings['file_private_path'] = '/app/public/sites/default/files/private';
```

## Wodby

In settings file at the end of Wodby specific block where it will override any other value:

```
if (isset($_SERVER['WODBY_APP_NAME'])) {
  // The include won't be added automatically if it's already there.
  include '/var/www/conf/wodby.settings.php';

  // Override setting from wodby.settings.php.
  $settings['config_sync_directory'] = '../conf/cmi';

  // Private files path.
  $settings['file_private_path'] = '/var/www/html/public/sites/default/files/private';
}
```

In `.wodby.yml` file there must be following task which symlinks private folder to `/mnt/files/private`:

```
  - name: Setup public and private file folders
    type: command
    command: |
      ln -sfn /mnt/files/private /var/www/html/public/sites/default/files/private
      sudo files_chown /mnt/files/public && sudo files_chmod /mnt/files/public
      sudo files_chown /mnt/files/private && sudo files_chmod /mnt/files/private

```
