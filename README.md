# Liquid Week 2018

Setup lab environment
---------------------
Generate and distribute SSH key
---------------------
1. Login as root
2. Run following command (accept default settings)

_# ssh-keygen_

3. Copy SSH key to localhost

_# ssh-copy-id localhost_

4. Accept the figerprint and type root password
5. You should be able to login to localhost without typing a password

**WARNING**

**Please do not use root account in ANY real implementation - this is not recommended**

Clone git repository with Ansible liquidweek2018 examples

_# git clone https://github.com/osobinp/liquidweek2018.git

._
Setup lab environment @home.
---------------------
How to install Oracle VirtualBox
---------------------
https://www.virtualbox.org/

https://www.youtube.com/watch?v=63_kPIQUPp8

Importing OVA file to VirtualBox
---------------------
https://www.youtube.com/watch?v=ZCfRtQ7-bh8

Manual setup on your laptop or pc with installed Linux
---------------------
http://docs.ansible.com/ansible/latest/intro_installation.html

 **CentOS:**

 _$ sudo yum install ansible git_

 **Debina/Ubuntu:**

 _$ sudo apt-get update_

 _$ sudo apt-get install software-properties-common_

 _$ sudo apt-add-repository ppa:ansible/ansible_

 _$ sudo apt-get update_

 _$ sudo apt-get install ansible git_



by Pawel Osobinski (@accenture.com)

Based on
https://github.com/ansible/ansible-examples
