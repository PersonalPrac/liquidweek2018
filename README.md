# Liquid Week 2018

Setup lab environment
---------------------
Generate and distribute SSH key
---------------------
1. Login as root (from liquid account) <- pomyslec o tym
  a. If using Cloud instance use provided user account then type; sudo -i
  b. If using VM use provided root credentials
2. Run following command (accept default settings)
```bash
  # ssh-keygen
```
3. Copy SSH key to localhost
```bash
  # ssh-copy-id localhost
```
4. Accept the figerprint and type root password
5. You should be able to login to localhost without typing a password

**WARNING**

**We use privileged account (root) to simplify the examples**
**In real scenario please use regular user account with proper sudo rights**
**For more info please visit : http://docs.ansible.com/ansible/latest/become.html#becoming-an-unprivileged-user**

Clone git repository with Ansible liquidweek2018 examples
---------------------
```bash
  # git clone https://github.com/osobinp/liquidweek2018.git
```

Setup lab environment @home.
---------------------
How to install Oracle VirtualBox
---------------------
https://www.virtualbox.org/

https://www.youtube.com/watch?v=63_kPIQUPp8

Importing OVA file to VirtualBox
---------------------
https://www.youtube.com/watch?v=ZCfRtQ7-bh8

Manual steps on laptop or PC with installed Linux
---------------------
http://docs.ansible.com/ansible/latest/intro_installation.html

 **CentOS:**
```bash
 $ sudo yum install ansible git
```
 **Debina/Ubuntu:**
```bash
 $ sudo apt-get update
 $ sudo apt-get install software-properties-common
 $ sudo apt-add-repository ppa:ansible/ansible
 $ sudo apt-get update
 $ sudo apt-get install ansible git
```

<br>
<br>
by Pawel Osobinski (@accenture.com)

Based on
https://github.com/ansible/ansible-examples
