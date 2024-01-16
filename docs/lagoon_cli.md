# Lagoon CLI

Examples on how to do things on Lagoon on CLI. Lagoon CLI authenticates with your SSH keys.

## Project

Update branch regexp aka what branches can be deployed:

```console
lagoon update project -p PROJECT -b '^(dev|main|preview)$'
```

## Environment variables

List variables (-e for env or omit if global variables):

```console
lagoon list variables --reveal -p PROJECT -e dev
```

Add global build time variable:

```console
lagoon add variable -p PROJECT -N "VARIABLE_NAME" -V "VARIABLE_VALUE" -S build
```

Add variable to env instance (e.g. to dev or main):

```console
lagoon add variable -p PROJECT -N "VARIABLE_NAME" -V "VARIABLE_VALUE" -e dev
```

## Administer users

List users from a group (from same group as you):

```console
lagoon list group-users
```

Create user and add to a group:

```console
lagoon add user -E EMAIL -F FIRSTNAME -L LASTNAME
lagoon add ug -E EMAIL -N GROUP -R MAINTAINER
```

Remove a user from a group (only Amazee can delete users):

```console
lagoon delete ug -E EMAIL -N GROUP
```
