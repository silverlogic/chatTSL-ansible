#!/bin/bash

cat <<EOF |
from django.db import IntegrityError
from apps.users.models import User
try:
    User.objects.create_superuser('$3', '$4')
    print('created')
except IntegrityError:
    print('already exists')
EOF
$1/bin/python $2/manage.py shell -i python
