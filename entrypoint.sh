#!/bin/bash

#sed -i "s#^  server .*#  server ${FPM_BACKEND:-api}:${FPM_BACKEND_PORT:-9000};#" /etc/nginx/default.d/upstream.conf
sed -i "s#^  fastcgi_pass .*#  fastcgi_pass ${FPM_BACKEND:-api}:${FPM_BACKEND_PORT:-9000};#" /etc/nginx/conf.d/vhost.d/php-fpm.conf 
sed -i "s#^  root .*#  root ${WEBROOT:-/var/www/public};#" /etc/nginx/conf.d/default.conf
exec nginx
