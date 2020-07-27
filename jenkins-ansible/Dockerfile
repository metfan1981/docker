FROM jenkins/jenkins

USER root

RUN apt update -y && \
    apt install ansible vim -y

COPY id_rsa /tmp
COPY ansible.cfg /etc/ansible/
COPY hosts /etc/ansible/

USER jenkins
