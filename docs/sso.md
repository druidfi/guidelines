# SSO (Single-Sign-On) with PHP

How to use SSO e.g. with Microsoft AD/Azure AD and Google.

## Terminology

- IdP = Identity Provider e.g. AD or Shibboleth
- SP = Service Provider - usually the app we're doing
- SAML2 - the protocol used for communication

## Solutions

- [SAML Authentication module with Drupal ↗️](https://www.drupal.org/project/samlauth) - Recommended
- [SimpleSAMLphp ↗️](https://simplesamlphp.org/) - for more complex needs (multiple IdPs or more configuration) or custom
app

## Where to start?

- You configure your app (SP) with IdP's metadata which can usually be found publicly as XML (URLs, certificate)
- You inform some basic information (metadata) about your app (SP) to IdP provider
- IdP side must declare trust for your app (so your app can even communicate with IdP) and configure what attributes
are given to your app about the user
- Test login - if trust is created, you get to IdP login - usually you end up with some error when returning to your app
- Tweak configuration until you get back to app after login (this usually needs co-operation with some admin from IdP
side)

## Additional information

- [Azure AD with SimpleSAMLphp ↗️](http://www.lewisroberts.com/2015/09/05/single-sign-on-to-azure-ad-using-simplesamlphp/)

## Automatic updates on metadata

Usually e.g. certs update on IdP side. Then it's usually manual work to update metadata on SP side.

There is possibility with SimpleSAMLphp to configure automatic updates:

https://simplesamlphp.org/docs/stable/simplesamlphp-automated_metadata
