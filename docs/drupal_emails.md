# How to send emails in Drupal?

Sending mails is as hard as having a working printer.

## Requirements

First, please evaluate what is the actual need for sending emails in a Drupal site:

- Just Drupal user password resets (Forgotten password)
- Email content, order confirmation etc (related to business logic)

## Lagoon

- In Lagoon we can use "SMTP relay" technique as a transport

## Wodby

- In Lagoon we can use "SMTP relay" technique as a transport

![Break at first line in PHP scripts](../media/wodby_smtp.png)

## Custom

In a custom hosting environment like virtual server or other custom env you can try to
configure sendmail to use an external SMTP service.

`sendmail_path` setting can be found from php.ini file(s).
