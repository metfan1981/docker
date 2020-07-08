FROM ubuntu:16.04
 
RUN apt update -y 
RUN apt install apache2 php libapache2-mod-php php-mysql -y
 
ENV WEB_MSG Docker container Website welcomes!

COPY apache-conf /etc/apache2/apache2.conf
COPY dir.conf /etc/apache2/mods-enabled
COPY index.php /var/www/html
 
EXPOSE 80

LABEL maintainer="DevOps Practitioner <mail@gmail.com>"

VOLUME ["/var/www/html"] 

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
