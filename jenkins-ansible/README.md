Dockerfile to build Jenkins image with Ansible installed.

Do not forget to edit *hosts* file and *ansible-cfg* to match your settings. They will be copied to image.
Also prepare private key (id_rsa) to connect to remote hosts.

Container's settings at /var/jenkins_home will be exposed to *jenkins_w_ansible* volume
