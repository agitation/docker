FROM agitation/base:latest

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y mysql-server mysql-client

RUN mkdir -p /var/run/mysqld && chown -R mysql: /var/run/mysqld && rm -r /etc/mysql/*

COPY dist/ /

RUN chown -R mysql: /etc/mysql/ && chmod -R 700 /etc/mysql/

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
# CMD ["/usr/local/sbin/start.sh"]
