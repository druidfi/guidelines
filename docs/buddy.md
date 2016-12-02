# Buddy

Buddy is a Git and Continuous Delivery Platform.

See Buddy [homepage](https://buddy.works/) for more information.

## Implementation on projects

TODO: Marko will create documention with screenshots.

### Create a new project

- Select your Git Provider: GitHub
- Select your Git repository
- Create
- Skip "Create your first action" step
- Delete "My first pipeline" pipeline

### Create a new pipeline

- In the project view, select Add a new pipeline
- Select "Clone existing pipeline"
- Select some pipeline e.g. "Deploy to Testing" from some project
- Select "Clone all action from this pipeline"
- Clone actions

### Requirement for the project

- User account to [Buddy application](https://app.buddy.works)
- `scripts/create-artifact.sh` script needs be within branch which gets deployed
- Buddy IPs in project infra `firewall_additional_rules` and provisioned to erver
- Buddy public key on the server

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

## List of Buddy IPs

These are the IPs where commands against the server originate from and they must be allowed by the firewall.

```
108.163.203.143
184.154.12.42
184.154.193.210
91.200.38.2
```

## Buddy public key (project relative)

Buddy public keys are project relative. You can find the public key from actions which need access to your servers.

