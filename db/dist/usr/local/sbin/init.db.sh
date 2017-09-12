#!/bin/bash

until mysql -e "SELECT 1"; do
    sleep 0.2
done

mysql -e "CREATE DATABASE IF NOT EXISTS app; CREATE USER IF NOT EXISTS app; GRANT ALL ON app.* TO app"
