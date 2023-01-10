# Lagoon CLI

Examples on how to do things on Lagoon on CLI. Lagoon CLI authenticates with your SSH keys.

## Project

Update branch regexp aka what branches can be deployed:

``` sh
lagoon update project -p PROJECT -b '^(dev|main|preview)$'
```

## Environment variables

List variables (-e for env or omit if global variables):

``` sh
lagoon list variables --reveal -p PROJECT -e dev
```

Add global build time variable:

``` sh
lagoon add variable -p PROJECT -N "VARIABLE_NAME" -V "VARIABLE_VALUE" -S build
```

Add variable to env instance (e.g. to dev or main):

``` sh
lagoon add variable -p PROJECT -N "VARIABLE_NAME" -V "VARIABLE_VALUE" -e dev
```

## Administer users

List users from a group:

``` sh
lagoon list users -N GROUP
```

Create user and add to a group:

``` sh
lagoon add user -E EMAIL -F FIRSTNAME -L LASTNAME
lagoon add ug -E EMAIL -N GROUP -R MAINTAINER
```

Remove a user from a group (only Amazee can delete users):

``` sh
lagoon delete ug -E EMAIL -N GROUP
```
