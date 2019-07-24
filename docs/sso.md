# SSO (Single-Sign-On) with PHP

How to use SSO e.g. with Microsoft AD/Azure AD and Google.

## Terminology

- IdP = Identity Provider e.g. AD
- SP = Service Provider e.g. Drupal

## Requirements

- [SimpleSAMLphp](https://simplesamlphp.org/)

## Tutorials

- [Azure AD with SimpleSAMLphp](http://www.lewisroberts.com/2015/09/05/single-sign-on-to-azure-ad-using-simplesamlphp/)

## Automatic updates on metadata

Usually e.g. certs update on IdP side. Then it's usually manual work to update metadata on SP side.

There is possibility in SimpleSAMLphp to configure automatic updates:

https://simplesamlphp.org/docs/stable/simplesamlphp-automated_metadata
