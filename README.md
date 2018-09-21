docker-nginx-fpm-proxy
===

Latest Nginx setup to proxy to separate php-fpm instance.

# Usage
By default, it proxies to `api:9000`, so if you link the php-fpm container ("api") to nginx, it works out of the box.

Otherwise you can configure the following environment variables:

**FPM_BACKEND**
default: api

**FPM_BACKEND_PORT**
default: 9000

**WEBROOT**
default: /var/www/public

## Example
see `docker-compose.yml` in https://github.com/ionphractal/docker-screeenly
