# Ansible

See Ansible [GitHub-page](https://github.com/ansible/ansible) for more information.

Note: our infra repositories require Ansible 2.

## Install

Option 1: install using [Brew](brew.md)

```
$ brew install ansible
```

Option 2: install using pip

```
$ easy_install pip
$ sudo -H pip install ansible
```

## Install Ansible Galaxy roles

When you have infra repository with requirements.yml file, you can install the roles specified with the following command:

```
$ ansible-galaxy install -r ansible/requirements.yml -p ansible/roles
```

This command will read the file `ansible/requirements.yml` and install specified roles to folder `ansible/roles`.

`ansible-galaxy` command does not have update option, so to update existing roles, you must use `-force` argument:

```
$ ansible-galaxy install -r ansible/requirements.yml -p ansible/roles -force
```

This command will re-download all roles.

## List installed Ansible Galaxy roles

You can get current installed roles and their version with:

```
$ ansible-galaxy list -p ansible/roles
```
