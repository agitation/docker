#!/bin/bash
php-fpm7.0  # runs in the background
exec nginx  # runs in the foreground and keeps the container alive
