# How to setup CloudFront CDN for a Drupal site

How to configure Amazon CloudFront CDN for a Drupal site.

## Requirements

- [CDN ↗️](https://www.drupal.org/project/cdn) module
- Access to [AWS Console and to CloudFront ↗️](https://console.aws.amazon.com/cloudfront/home)

## Create a CloudFront distribution

- Click "Create distribution" button
- Select "Web" and click "Get Started" button
- Set "Origin Domain Name", this is e.g. "www.yoursite.com"
- Set "Query String Forwarding and Caching" to "Forward all, cache based on all"
- Click "Create Distribution" button

Note that provisioning takes some time.

## Configuration

Enable CDN module and export configuration.

CDN is configured as follows:

``` php
$config['cdn.settings'] = [
  // CDN could be conditionally disabled here.
  'status' => TRUE,
  'mapping' => [
    'domain' => 'd179b5q4zpow80.cloudfront.net',
  ]
];
```

NOTE! You'll get different cloudfront.net subdomain for your project.

## Links

- [Readme for CDN module ↗️](https://cgit.drupalcode.org/cdn/tree/README.txt)
