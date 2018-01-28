# Liquid Week 2018

Setup lab environment
---------------------
Generate and distribute SSH key
---------------------
1. Login as root
2. Run following command (accept default settings)

  ssh-keygen

3. Copy SSH key to localhost

  ssh-copy-id localhost

4. Accept the figerprint and type root password
5. You should be able to login to localhost without typing a password

**WARNING**

**Please do not use root account in ANY real implementation - this is not recommended**

Clone git repository with Ansible liquidweek2018 examples
---------------------
  git clone https://github.com/osobinp/liquidweek2018.git


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

 $ sudo yum install ansible git

 **Debina/Ubuntu:**

 $ sudo apt-get update_
 $ sudo apt-get install software-properties-common
 $ sudo apt-add-repository ppa:ansible/ansible
 $ sudo apt-get update

 
 $ sudo apt-get install ansible git


<br>
<br>
by Pawel Osobinski (@accenture.com)

Based on
https://github.com/ansible/ansible-examples
