# How to send emails in Drupal?

Sending mails is as hard as having a working printer.

## Requirements

First, please evaluate what is the actual need for sending emails in a Drupal site:

1. Just Drupal user password resets (Forgotten password)
2. Email content, order confirmation etc (related to business logic)

If use case is the 1st, then probably there is no need to install any modules to Drupal.

For the 2nd; there are some modules which might be needed:

- [Mail System](https://www.drupal.org/project/mailsystem) to control what is used as Formatter and Sender
- [Mime Mail](https://www.drupal.org/project/mimemail) to use HTML mails

## Stonehenge

On your local environments you want to send emails to [Mailhog](https://mailhog.docker.so).

This can be done e.g. with adding this ENV variable to your Docker service having PHP:

```
PHP_SENDMAIL_PATH: "/usr/sbin/sendmail -S stonehenge-mailhog:1025"
```

## Lagoon

- In Lagoon we can use "SMTP relay" technique as a transport

![Lagoon SMTP settings](../media/lagoon_smtp.png)

## Wodby

- In Lagoon we can use "SMTP relay" technique as a transport
- Read more on [Wodby docs](https://wodby.com/docs/1.0/infrastructure/mail-delivery/)

![Wodby SMTP settings](../media/wodby_smtp.png)

## Custom

In a custom hosting environment like virtual server or other custom env you can try to
configure sendmail to use an external SMTP service.

`sendmail_path` setting can be found from php.ini file(s).