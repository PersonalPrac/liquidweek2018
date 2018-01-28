## Single Playbook Implementation

- Requires Ansible 1.2 or newer
- Expects CentOS/RHEL 7.x hosts

This is very simple playbook which:
1. Installs mc (midnight commander) package
2. Create a new user
3. Modify MOTD
4. Set environment variable

Set the name of the user in username variable then run the playbook, like this:

	# ansible-playbook -i hosts site.yml


## Environment preparation (env_preparation.yml)
This playbook allows to quickly setup testing environment for workshops.
On destination server it will:
1. Install ansible git vim nano
2. Create liquid user (used in workshops)

In order to setup the environment:
```bash
  # export ANSIBLE_HOST_KEY_CHECKING=false
```
Edit hosts with names of hosts which needs to be setup

Run playbook + provide ssh password for root account on remote server(s)
```bash
  # ansible-playbook -i hosts env_preparation.yml --ask-pass
```
