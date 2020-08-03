GitLab Server runs in container; parameters are specified in docker-compose file.

GitLab Runner runs directly on underlying host (runner must be pre-installed).

##### Install Runner
`curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash`

`sudo apt-get install gitlab-runner`

##### Register Runner
Edit **gitlab-runner-register.sh** variables to correspond your parameters:
- TOKEN
- DESCRIPTION
- SERVER_CONTAINER_IP

Execute script: `./gitlab-runner-register.sh`
