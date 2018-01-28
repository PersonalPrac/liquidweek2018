Setup lab environment @home.
---------------------
## How to install Oracle VirtualBox

https://www.virtualbox.org/

https://www.youtube.com/watch?v=63_kPIQUPp8

Importing OVA file to VirtualBox
---------------------
https://www.youtube.com/watch?v=ZCfRtQ7-bh8

CentOS ISO files
---------------------
http://isoredirect.centos.org/centos/7/isos/x86_64/CentOS-7-x86_64-DVD-1708.iso

<br>
Manual steps on laptop or PC with installed Linux (if you don't want to use env_preparation playbook)
---------------------

0. Login to VM (either as root or account which you created during the installation process)

1. Install git (use su - or sudo to become root if you are not already)

```bash
	$ sudo yum install git -y
```

Optionally install ansible

http://docs.ansible.com/ansible/latest/intro_installation.html


4. Clone git repository with Ansible liquidweek2018 examples

```bash
  # git clone https://github.com/osobinp/liquidweek2018.git
```

5. Go to lab_preparation and run following command:

**Make sure localhost is included to /etc/ssh/known_hosts**

https://ivanshn.wordpress.com/2013/04/15/add-a-new-host-to-know_hosts/

Sometimes simple:

```bash
  # sudo cp .ssh/known_hosts /etc/ssh/
```

will do the job. Then

```bash
	# export ANSIBLE_HOST_KEY_CHECKING=false
	# cd ./liquidweek2018/lab_preparation
	# ansible-playbook -i hosts env_preparation.yml --ask-pass
```

6. Logout from current user. Login as liquid user

2. Generate SSH key (accept default options)

```bash
  # ssh_keygen
```

3. Copy the key to localhost server (so you don't need to type passwords) - type user/root password when prompted

```bash
  # ssh-copy-id localhost
```














6. Logout from current user and login to liquid user

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
