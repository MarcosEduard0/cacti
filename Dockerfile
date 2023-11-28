FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install php-fpm iputils-ping -y && \
    apt install php-gd php-gmp php-mbstring php-dom php-gd \
    php-simplexml php-xml php-curl -y && \
    apt install php-intl php-mysqli php-ldap php-snmp snmp snmpd rrdtool fping -y
    

ENTRYPOINT ["php-fpm8.2", "-F"]
