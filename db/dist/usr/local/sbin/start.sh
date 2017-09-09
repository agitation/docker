#!/bin/bash

# if this is a fresh application, initialize the MySQL data dir on the volume
test -d /var/lib/mysql/mysql || mysql_install_db
exec mysqld
