# Buddy

Buddy is a Git and Continuous Delivery Platform.

See Buddy [homepage](https://buddy.works/) for more information.

## Implementation on projects

TODO: Marko will create documention with screenshots.

## Pipeline example

- Name: `Deploy to Testing`
- Trigger mode: `on every push`
- Branch or tag assigment: `dev`

### Actions

- Make database backup to `backups/database_dump_${execution.id}.sql`
- Create a new build and make `current.tar.gz` of it using `scripts/create-artifact.sh ${env}`
- Upload the `current.tar.gz` to testing server and to project root (default `/var/www/project`)
- Extract `current.tar.gz` to `releases/release_${execution.id}`
- Symlink `current` to `releases/release_${execution.id}` (where current is the webroot)
- Run drush commands (e.g. `updb`, `cc all` and `fra`)
- On success: inform on project Slack channel
- On failure: inform on project Slack channel and/or send email
