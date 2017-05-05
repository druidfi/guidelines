# Let's Encrypt and Certbot

How to deploy Let's Encrypt SSL certificates with Certbot.

Our infras have Certbot installed and auto renewal setup with Crontab.

## Links

- [Let's Encrypt](https://letsencrypt.org/)
- [https://certbot.eff.org/](Certbot)

## Commands

Note! We assume Certbot is installed to `/opt/certbot`.

List current certificates:

```
$ /opt/certbot/certbot-auto certificates
```

Create a new certificate:

```
$ /opt/certbot/certbot-auto certonly --webroot -w /var/www/example/ -d www.example.com
```

Renew a certificate:

```
$ /opt/certbot/certbot-auto renew
```

## Known issues

When using basic auth, Certbot calls back to your server might get Access denied. 

Solution is to let Certbot calls pass without basic auth:

You need to allow path `${webroot-path}/.well-known/acme-challenge` with http (port 80) to pass always without basic
auth.
