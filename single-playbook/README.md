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


## (Optional) Environment preparation
This playbook allows to quickly setup testing environment for workshops on Linux system.

All hosts should be ready - this playbook can be used when you want to setup your own testing environment.

On destination server it will:
1. Install ansible git vim nano
2. Create liquid user (used in workshops)

In order to setup the environment:
Edit hosts with name(s) (ip's) of host(s) which needs to be setup
**Make sure all hosts from the scope are included to /etc/ssh/known_hosts**

Sometimes simple:

```bash
  # sudo cp .ssh/known_hosts /etc/ssh/
```

will do the job

```bash
  # export ANSIBLE_HOST_KEY_CHECKING=false
```

Run playbook + provide ssh password for root account on remote server(s)
```bash
  # ansible-playbook -i hosts env_preparation.yml --ask-pass
```
