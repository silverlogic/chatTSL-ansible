FROM debian:10

RUN apt update && apt install -y python python-pydot python-pydot-ng graphviz graphviz-dev libgraphviz-dev wget

COPY docker/entrypoints/ /entrypoints/

# redis
VOLUME /opt/redis
VOLUME /var/lib/redis

# web
VOLUME /opt/api

RUN useradd -ms /bin/bash api

ENTRYPOINT tail -f /dev/null
