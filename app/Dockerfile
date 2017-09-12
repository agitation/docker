FROM agitation/base:latest

ENV DEBIAN_FRONTEND noninteractive

ADD https://packages.sury.org/php/apt.gpg /etc/apt/trusted.gpg.d/php.gpg

RUN chmod 744 /etc/apt/trusted.gpg.d/php.gpg && \
    echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list && \
    apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y nginx php7.1-fpm composer php-apcu php-bcmath php-bz2 php-cli php-curl php-gd php-geoip php-gettext php-gmp php-imagick php-intl php-json php-mbstring php-mcrypt php-memcache php-mysql php7.1-opcache php-readline php-xml php7.1-xsl php-zip mysql-client

RUN mkdir /run/php && rm -r /etc/php/7.1/* /etc/nginx/*

COPY dist/ /

EXPOSE 80 8080

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
