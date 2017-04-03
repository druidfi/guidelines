# Ansible

See Ansible [GitHub-page](https://github.com/ansible/ansible) for more information.

Note: our infra repositories require Ansible 2.2.1 (Apr 3rd 2017).

NOTE: Currently 2.2.2.x is not working. If your Ansible is updated, you can install version 2.2.1.0_2 with:

```
$ brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/a642169312c975bea27617e60c925f7494d44de4/Formula/ansible.rb
```

## Install

Option 1 (Mac): install using [Brew](brew.md)

```
$ brew install ansible
```

Option 2 (Mac & Linux): install using pip

```
$ easy_install pip
$ pip install ansible==2.2.1.0
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
