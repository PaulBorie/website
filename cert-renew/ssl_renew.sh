#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd /home/username/workdir/
$COMPOSE run certbot renew && $COMPOSE kill -s SIGHUP webserver > /var/log/certlog
$DOCKER system prune -af