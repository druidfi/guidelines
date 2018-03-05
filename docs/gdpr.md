# GDPR guidelines

Here are some general guidelines and policies concerning GDPR regulation on our daily software development.

## Reporting breaches

TODO

- Report under 72 hours
- [Look here for instructions for reporting](https://docs.google.com/document/d/1e-pnZHLgjLk7xSwv3lF8DDZaqkaW29V-ZFFX-Wvs_UM/edit?usp=sharing)
- If hosting is from Amazee, inform Amazee on their Slack channel

## Privacy Impact Assessment (PIA)

Always do a PIA to any site/service.

Questions to ask:

- Do we store personal user data?
- If yes, do we need it? Do we need all the fields?
- If yes, do we give the data to any 3rd party? If yes, why? Do we have consent?

If no, still go through things below. There are still good recommendations.

## Database

Syncing a database from production or staging environments, the personal data should be sanitized.

### Drupal specific notes

- When possible, we use Faker/Seeder solution to create dummy content on local and not use production data at all
- We use GDPR-module: https://www.drupal.org/project/gdpr (it has a feature for sanitizing data on the
source)
- Original `drush sql-dump` command includes sanitize flag which sanitizes a few user fields and e.g. removes Webform
submissions if installed. NOTE: sanitizing happens on target machine which is a problem.

## Backups

TODO

Some general recommendations:

- Encrypt backups
- Store backups remotely
- Limit access to backups
- Don't store backups longer than needed (create automatic rules to purge old backups)

## Logs

Some general recommendations:

- Use identifiers, not personal data (like IP address)
- Last 24h human readable so incident solving can be done
- Encrypt all older logs
- Remove logs after e.g. 1-3 months using `shred` (depends how logs are stored)

### Links

- https://www.ctrl.blog/entry/gdpr-web-server-logs

## Software design

There are some generic features which should be available for a user (data subject) when your software handles personal
data:

- Forget me
- Export data
- Allow users to edit their profile
- Consent checkboxes and re-request consent
- See all my data
- Age checks (under 16y old means more rules)

And then some other do and don'ts:

- APIs: You shouldn’t allow anonymous API access to personal data.

## Links and resources

- https://techblog.bozho.net/gdpr-practical-guide-developers/
