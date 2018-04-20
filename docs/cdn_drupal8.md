# How to setup CloudFront CDN for Drupal 8 site

How to configure Amazon CloudFront CDN for Drupal 8 site.

## Create a CloudFront distribution

TODO

## Configuration

Enable CDN module and export configuration.

CDN is configured as follows:

```
$config['cdn.settings'] = [
  // CDN could be conditionally disabled here.
  'status' => TRUE,
  'mapping' => [
    'domain' => 'd179b5q4zpow80.cloudfront.net',
  ]
];
```

NOTE! You'll get different cloudfront.net subdomain for your project.
