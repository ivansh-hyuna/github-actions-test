#!/usr/bin/env bash

echo "## START NGINX APP"
envsubst '$$PORT $$API_PORT' < /etc/nginx/conf.d/gateway > /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
