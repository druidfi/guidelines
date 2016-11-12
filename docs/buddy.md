# Buddy

Buddy is a Git and Continuous Delivery Platform.

See Buddy [homepage](https://buddy.works/) for more information.

## Implementation on projects

TODO: Marko will create documention with screenshots.

### Requirement for the project

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

## Buddy public key

This public SSH key must be on the server within the user which runs the commands.

```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhuZRk9VfIMLR0xbCcSmDmGqeVb26huaKNHUoE46ZeZaHMe6c9qHb2xZaiVVUb/F0nXxEsQZHrx4OusEL5KrQYIJ0G13WC2pI9WO92jiwdFx+QDSPHT2U6Egu/M76Eavjm57Yv63X7zeFyGpn2k7Prmn8hwSdA+rtxO0EzWdtthmYvQ2LpER7j3yE+e+Vm2w2ED0r2h14iCC+1hdI95ueTYwT2YHX9zHRNg0PdFUwvUkYcbaZFLsuzsRTQA6GZXDxePzp9I7jGoYNyUcjZrmJduuK7aDMcop/0ms96gnXxpH1WpdNp9Pt2nhBkBt8G+xHr3bMloSN/vjw/TCDNtYSj Buddy Key
```

The key should be placed with infra but you can do it manually like this:

```
echo -e 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhuZRk9VfIMLR0xbCcSmDmGqeVb26huaKNHUoE46ZeZaHMe6c9qHb2xZaiVVUb/F0nXxEsQZHrx4OusEL5KrQYIJ0G13WC2pI9WO92jiwdFx+QDSPHT2U6Egu/M76Eavjm57Yv63X7zeFyGpn2k7Prmn8hwSdA+rtxO0EzWdtthmYvQ2LpER7j3yE+e+Vm2w2ED0r2h14iCC+1hdI95ueTYwT2YHX9zHRNg0PdFUwvUkYcbaZFLsuzsRTQA6GZXDxePzp9I7jGoYNyUcjZrmJduuK7aDMcop/0ms96gnXxpH1WpdNp9Pt2nhBkBt8G+xHr3bMloSN/vjw/TCDNtYSj Buddy Key\n' >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
```
