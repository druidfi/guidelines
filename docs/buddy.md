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

### Requirement for the Buddy deployment project

- User account to [Buddy application](https://app.buddy.works)
- Buddy IPs whitelisted in firewall(s) for the targeted server(s)
- Buddy public key on the server(s)

## Pipeline (example)

- Name: `Deploy to Testing`
- Trigger mode: `on every push`
- Branch or tag assigment: `development`

### Actions (Atomic deployment example)

- Make database backup
- Create a new build and make and artifact file (e.g. in Docker)
- Upload the artifact file to targeted server
- Extract artifact to `releases`
- Symlink e.g. `public` to `releases/release_${execution.id}` (where public is the webroot)
- Run any after deploy commands needed
- On success: inform on Slack channel and/or send email
- On failure: inform on Slack channel and/or send email

## List of Buddy IPs

These are the IPs where commands against the server originate from and they must be allowed by the firewall.

If your firewall supports adding DNS source, make sure to whitelist the new servers with this command:

```
iptables -A INPUT -p tcp -s workers.buddy.works -j ACCEPT
```

Up-to-date list of IPs can be found from here:
https://buddy.works/knowledge/deployments/what-are-buddy-ip-addresses

## Buddy public key (project relative)

Buddy public keys are project relative. You can find the public key from actions which need access to your servers.
