# GDPR guidelines

Here are some general guidelines and policies concerning GDPR regulation on our daily software development.

## Privacy Impact Assessment (PIA)

Always do a PIA to any site/service.

Questions to ask:

- Do we store personal user data?
- If yes, do we need it? Do we need all the fields?
- If yes, do we give the data to any 3rd party? If yes, why? Do we have consent?

If no, still go through things below. There are still good recommendations.

## Database

TODO

## Backups

TODO

Some general recommendations:

- Encrypt backups
- Don't store longer than needed

## Logs

Some general recommendations:

- Use identifiers, not personal data (like IP address)
- Last 24h human readable
- Encrypt all older logs
- Remove logs after e.g. 1-3 months using `shred`

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
- Age checks

And then some other do and don'ts:

- APIs: You shouldn’t allow anonymous API access to personal data.


## Links and resources

- https://techblog.bozho.net/gdpr-practical-guide-developers/
