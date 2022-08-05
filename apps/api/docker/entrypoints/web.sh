ln -s /src /opt/api/site

mkdir /opt/api/static
ln -s /opt/api/static /static
chown -R api:www-data /opt/api/static

tail -f /dev/null
