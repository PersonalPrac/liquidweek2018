# Setup lab environment @home.

## How to install Oracle VirtualBox

https://www.virtualbox.org/

https://www.youtube.com/watch?v=63_kPIQUPp8

## Importing OVA file to VirtualBox

https://www.youtube.com/watch?v=ZCfRtQ7-bh8

## CentOS ISO files

http://isoredirect.centos.org/centos/7/isos/x86_64/CentOS-7-x86_64-DVD-1708.iso

<br>

##Manual steps on laptop or PC with installed Linux


0. Login to VM/cloud instance (as root) - if you created account with sudo right use sudo instead

1. Install git

```bash
# yum install git -y
```

2. Install ansible

http://docs.ansible.com/ansible/latest/intro_installation.html


3. Clone git repository with Ansible liquidweek2018 examples

```bash
# git clone https://github.com/osobinp/liquidweek2018.git
```

4. Generate SSH key (accept default options) from root account

```bash
# ssh_keygen
```

5. Copy the key to localhost server (type root password)

```bash
# ssh-copy-id localhost
```

**Make sure localhost is included to /etc/ssh/known_hosts**

https://ivanshn.wordpress.com/2013/04/15/add-a-new-host-to-know_hosts/

Sometimes simple:

```bash
# ssh localhost (accept fingerprint)
# sudo cp .ssh/known_hosts /etc/ssh/
```

will do the job.

4. Go to lab_preparation and run following command:

```bash
# export ANSIBLE_HOST_KEY_CHECKING=false
# cd ./liquidweek2018/lab_preparation
# ansible-playbook -i hosts env_preparation.yml --ask-pass
```

5. Logout from current user. Login as liquid user

6. Generate SSH key (accept default options)

```bash
# ssh_keygen
```

7. Copy the key to localhost server (so you don't need to type passwords) - type liquid user password

```bash
# ssh-copy-id localhost
```

8. Follow the instructions from the presentation

9. **Have fun ! :)**
