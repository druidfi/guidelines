# Vagrant

See Vagrant [homepage](https://www.vagrantup.com/) for more information.

Note: recommended version is 1.8.6 or newer.

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

## SSH agent forwarding

Allow SSH agent forwarding in your local `~/.ssh/config` and make sure the IP-addess is the same as in the Vagrantfile.

See [Github: Using SSH agent forwarding](https://developer.github.com/guides/using-ssh-agent-forwarding/).
