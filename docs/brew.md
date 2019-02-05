# Brew

See Brew [homepage](http://brew.sh/) for more information.

## Requirements

- OSX/macOS

## Install

Install Brew using their script:

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Note: don't use `sudo` to install Brew

## Install software with Brew

You can install software with install command:

```
$ brew install ansible
```

You can install certain version with:

```
$ brew install ansible@2.1
```

Or using Git commits (get raw file url):

```
$ brew unlink ansible
$ brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/a642169312c975bea27617e60c925f7494d44de4/Formula/ansible.rb
```

## Update and Upgrade

Fetch the newest version of Homebrew and all formulae: 

```
$ brew update
```

Upgrade outdated, unpinned brews: 

```
$ brew upgrade
```

## Check your system for potential problems

You can always check health of your brews and Homebrew itself:

```
$ brew doctor
```
