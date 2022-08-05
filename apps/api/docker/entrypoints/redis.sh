#!/bin/bash

if ! command -v redis-server &> /dev/null
then
    echo "redis-server not found. You need to provision."
    exit 1
fi

runuser -l redis -c "/usr/bin/redis-server /etc/redis/6379.conf"
