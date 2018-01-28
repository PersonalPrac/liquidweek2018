Setup lab environment @home.
---------------------
## How to install Oracle VirtualBox

https://www.virtualbox.org/

https://www.youtube.com/watch?v=63_kPIQUPp8

Importing OVA file to VirtualBox
---------------------
https://www.youtube.com/watch?v=ZCfRtQ7-bh8

Manual steps on laptop or PC with installed Linux
---------------------



Clone git repository with Ansible liquidweek2018 examples
---------------------
```bash
  # git clone https://github.com/osobinp/liquidweek2018.git
```

## (Optional) Environment preparation
This playbook allows to quickly setup testing environment for workshops on Linux system.

All hosts should be ready - this playbook can be used when you want to setup your own testing environment.

On destination server it will:
1. Install ansible git vim nano
2. Create liquid user (used in workshops)

In order to setup the environment:

Edit hosts with name(s) (ip's) of host(s) which needs to be setup

```bash
  # vim hosts
```

**Make sure all hosts from the scope are included to /etc/ssh/known_hosts**
https://ivanshn.wordpress.com/2013/04/15/add-a-new-host-to-know_hosts/
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


http://docs.ansible.com/ansible/latest/intro_installation.html
