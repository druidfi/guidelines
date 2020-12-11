# Yarn

See Yarn [homepage](https://yarnpkg.com/) for more information.

Latest version is 1.22.10 (Dec 11th 2020).

## Install

### OSX/macOS

Option 1: install using [Brew](brew.md)

```
$ brew install yarn
```

### Linux

See instructions for different distros: https://yarnpkg.com/en/docs/install#linux-tab

## How to use

Install packages using lockfile:

```
$ yarn install --frozen-lockfile
```

Add a package with version constraint:

```
$ yarn add webpack-cli@^4
```
