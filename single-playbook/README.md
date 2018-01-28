## Single Playbook Implementation

- Requires Ansible 1.2 or newer
- Expects CentOS/RHEL 7.x hosts

This is very simple playbook which:
1. Installs mc (midnight commander) package
2. Create a new user
3. Modify MOTD
4. Set environment variable

Set the name of the user in username variable then run the playbook, like this:

	ansible-playbook -i hosts site.yml
