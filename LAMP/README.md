# How to use

    docker run -d --rm --name web-app -p 8080:80 -e WEB_MSG="Webserver message" metfan1981/apache:latest

* Container's __/var/www/html__ will be exposed to __/var/lib/docker/volumes/__ at Docker Host.
* Defalut webserver message without specifying environment variables will be "__Docker container Website welcomes!__"

