# How to analyze logs from Amazee.io hosted site

How to configure Xdebug when using Docker and amazee.io.

## Requirements

- Amazee.io hosted site's repository and local Docker env running
- [request-log-analyzer](https://github.com/wvanbergen/request-log-analyzer)

## Steps

### On Docker

Login to production environment:

```
$ drush @master ssh
```

Zip all logs to files folder for download

```
$ zip -j ~/shared/files/logs.zip ~/logs/nginx/10fe*
```

### On local

Download logs (note the domain):

```
$ curl -LO https://www.mysite.fi/sites/default/files/logs.zip
```

Extract gz log files:

```
$ gunzip *.gz
```

Concat all files to one (correct order):

```
$ cat $(ls -t 10fe*) > output.log
```

Analyze all:

```
$ request-log-analyzer output.log
```

Analyze after a date:

```
$ request-log-analyzer output.log --after 2018-03-13
```

## Happy analyzing!
