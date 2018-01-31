# Setup lab environment @home

**Make sure you system is connected to the Internet**

### Download and install VMware player

https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html

### Importing OVF file to VMware player

https://docs.vmware.com/en/VMware-Workstation-Player/12.0/com.vmware.player.win.using.doc/GUID-DDCBE9C0-0EC9-4D09-8042-18436DA62F7A.html

### CentOS installation ISO

http://isoredirect.centos.org/centos/7/isos/x86_64/CentOS-7-x86_64-DVD-1708.iso

<br>

# Manual steps on laptop or PC with installed Linux

**In below examples we assume you have root access to the system**


0. Login to VM/cloud instance (as root)

1. Install git

```bash
# yum install git -y
```

2. Install ansible

http://docs.ansible.com/ansible/latest/intro_installation.html


3. Generate SSH key (accept default options) from root account

```bash
# ssh-keygen
```

4. Copy the key to localhost server (type root password)

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

5. Clone git repository with Ansible liquidweek2018 examples

```bash
# git clone https://github.com/osobinp/liquidweek2018.git
```

6. Go to lab_preparation and run following command:

```bash
# cd ./liquidweek2018/lab_preparation
# export ANSIBLE_HOST_KEY_CHECKING=false
# ansible-playbook -i hosts env_preparation.yml --ask-pass
```

7. Logout from current user. Login as liquid user

8. Generate SSH key (accept default options) for liquid user

```bash
# ssh-keygen
```

9. Copy the key to localhost server (so you don't need to type passwords) - type liquid user password

```bash
# ssh-copy-id localhost
```

10. Clone git repository with Ansible liquidweek2018 examples (or copy it from root account)

```bash
# git clone https://github.com/osobinp/liquidweek2018.git
```

11. Follow the instructions from the presentation

**Steps can also be done on remote machine - change hosts file and distribute ssh key to take effect**

**Have fun ! :)**
