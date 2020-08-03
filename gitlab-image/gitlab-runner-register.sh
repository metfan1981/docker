#!/bin/sh

TOKEN=d3-B_qFhzqw6Aypqy_NQ
DESCRIPTION=my_main
NETWORK=gitlab_default
SERVER_HOSTNAME=gitlab.local.com
SERVER_CONTAINER=gitlab_server_1
SERVER_CONTAINER_IP=172.18.0.2


sudo gitlab-runner register \
    --non-interactive \
    --docker-privileged="true" \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --registration-token "$TOKEN" \
    --locked="false" \
    --description "$DESCRIPTION" \
    --url "http://$SERVER_HOSTNAME/" \
    --executor "docker" \
    --docker-image "metfan1981/docker:latest" \
    --docker-network-mode "$NETWORK" \
    --docker-links "$SERVER_CONTAINER" \
    --docker-extra-hosts "$SERVER_HOSTNAME:$SERVER_CONTAINER_IP" \
    --docker-dns "8.8.8.8","1.1.1.1"
