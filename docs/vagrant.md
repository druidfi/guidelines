# Vagrant

See Vagrant [homepage](https://www.vagrantup.com/) for more information.

Note: recommended version is 2.0.1.

Latest version is 2.0.1 (Dec 27th 2017).

## Install

Option 1: install using [Brew](brew.md)

```
$ brew cask install vagrant
```

Option 2: install manually

Download latest version from https://www.vagrantup.com/downloads.html

## Install VMware provider for Vagrant

[VMWare Fusion](vmware_fusion.md) needs a provider plugin for Vagrant which can be installed like this:

```
$ vagrant plugin install vagrant-vmware-fusion
```

Note: the plugin needs license file.

## Hostsupdater plugin

This plugin adds an entry to your /etc/hosts file on the host system automatically. See their
[homepage](https://github.com/cogitatio/vagrant-hostsupdater) for more info.

Install the plugin:

```
$ vagrant plugin install vagrant-hostsupdater
```

## SSH agent forwarding

Allow SSH agent forwarding in your local `~/.ssh/config` and make sure the IP-addess is the same as in the Vagrantfile.

See [Github: Using SSH agent forwarding](https://developer.github.com/guides/using-ssh-agent-forwarding/).
