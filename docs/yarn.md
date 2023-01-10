# Yarn

See Yarn [homepage ↗️](https://yarnpkg.com/) for more information.

## Install

### macOS

Option 1: install using [Brew](brew.md)

``` sh
brew install yarn
```

### Linux

See instructions for different distros: https://yarnpkg.com/en/docs/install#linux-tab

## How to use

Install packages using lockfile:

``` sh
yarn install --frozen-lockfile
```

Add a package with version constraint:

``` sh
yarn add webpack-cli@^4
```
