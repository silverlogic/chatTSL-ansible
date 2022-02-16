#!/bin/bash

if ! command -v psql &> /dev/null
then
    echo "psql not found. You need to provision."
    exit 1
fi

VERSION=`ls /etc/postgresql`
runuser -l postgres -c "/usr/lib/postgresql/$VERSION/bin/postgres -D /var/lib/postgresql/$VERSION/main -c config_file=/etc/postgresql/$VERSION/main/postgresql.conf"
