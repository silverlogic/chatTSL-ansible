FROM python:3.10

COPY requirements.yml /opt/ansible/
COPY requirements.txt /opt/ansible/

RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
RUN cd /opt/ansible && pip install -r requirements.txt && ansible-galaxy install -r requirements.yml

WORKDIR /opt/project-ansible/
