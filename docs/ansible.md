# Ansible

See Ansible [GitHub-page ↗️](https://github.com/ansible/ansible) for more information.

## Install

Option 1 (macOS): install using [Brew](brew.md)

```
brew install ansible
```

Option 2 (macOS & Linux): install using pip

```
easy_install pip
pip install ansible==2.9.6.0
```

## Install Ansible Galaxy roles

When you have infra repository with requirements.yml file, you can install the roles specified with the following command:

```
ansible-galaxy install -r ansible/requirements.yml -p ansible/roles
```

This command will read the file `ansible/requirements.yml` and install specified roles to folder `ansible/roles`.

`ansible-galaxy` command does not have update option, so to update existing roles, you must use `-force` argument:

```
ansible-galaxy install -r ansible/requirements.yml -p ansible/roles -force
```

This command will re-download all roles.

## List installed Ansible Galaxy roles

You can get current installed roles and their version with:

```
ansible-galaxy list -p ansible/roles
```

## Get older version

If your Ansible gets updated to something not supported, you can install older version (e.g. 2.2.1.0_2) with:

```
brew unlink ansible
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/a642169312c975bea27617e60c925f7494d44de4/Formula/ansible.rb
```
