#!/bin/sh
set -e

export DOL=$

envsubst < /workdir/proxy.template >  /etc/nginx/conf.d/default.conf

exec "$@"