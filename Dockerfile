#vim:set ft=dockerfile:
FROM centos:7.1.1503

MAINTAINER Crakmedia <docker@crakmedia.com>

# PHP5 Stack and nginx
RUN yum -y install epel-release yum-utils && \
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
    yum-config-manager --enable remi-php56,remi && \
    yum -y update && \
    yum -y install php-fpm php-mysql php-mcrypt php-curl php-cli php-gd php-pgsql php-pdo \
           php-common php-json php-pecl-redis php-pecl-memcache nginx python-pip php-soap \
           vim telnet git php-mbstring && \
    yum clean all

# Supervisor config
RUN /usr/bin/pip install supervisor supervisor-stdout

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Expose Ports
EXPOSE 80
EXPOSE 443

COPY ./docker/conf.d /etc/nginx/conf.d
COPY ./docker/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/php.ini /etc/php.ini
COPY ./docker/php-fpm.conf /etc/php-fpm.conf
COPY ./docker/php-fpm.d /etc/php-fpm.d
COPY ./docker/supervisord.conf /etc/supervisord.conf

# Volumes
VOLUME /var/log
VOLUME /var/lib/php/session

CMD ["/usr/bin/supervisord", "-n"]
