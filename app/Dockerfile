FROM agitation/base:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y nginx php-fpm composer php-apcu php-bcmath php-bz2 php-cli php-curl php-gd php-geoip php-gettext php-gmp php-imagick php-intl php-json php-mbstring php-mcrypt php-memcache php-mysql php-opcache php-readline php-xml php-xsl php-zip mysql-client

RUN mkdir /run/php && rm -r /etc/php/7.0/* /etc/nginx/*

COPY dist/ /

EXPOSE 80 8080

CMD ["/usr/local/sbin/start.sh"]
