FROM ubuntu:18.04

RUN apt update && apt install git gettext-base curl -y
RUN curl -fsSL https://get.docker.com -o get-docker.sh \
    && sh get-docker.sh 
RUN curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose 

RUN service docker start

CMD ["/bin/bash"]
