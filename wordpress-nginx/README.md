## WordPress+Nginx+PHP-FPM+MariaDB Deployment

- Requires Ansible 1.2 or newer
- Expects CentOS/RHEL 7.x host/s

RHEL7 version reflects changes in Red Hat Enterprise Linux and CentOS 7:
1. Network device naming scheme has changed
2. iptables is replaced with firewalld
3. MySQL is replaced with MariaDB

These playbooks deploy a simple all-in-one configuration of the popular
WordPress blogging platform and CMS, frontend by the Nginx web server and the
PHP-FPM process manager.

Then run the playbook, like this:

	ansible-playbook -i hosts site.yml

The playbooks will configure MariaDB, WordPress, Nginx, and PHP-FPM. When the run
is complete, you can hit access server to begin the WordPress configuration.
