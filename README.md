# Ansible

# Quick Start

1. Install Ansible `pip install -r requirements.txt`
2. Install ansible galaxy roles `ansible-galaxy install -r requirements.yml`
3. Each app has it's own subdirectory in this repo that controls it.  See the README in the app directory for
   further instructions.  For example "apps/api" or "apps/webapp".

# Steps to set up development:
(notes: `grep -R TODO .`) to find all todos and ignore Rundeck and staging/production todos.

1. Do Quick Start commands
2. copy from templates 

`cp -R <template> <app>`

 example: 

`cp -R app-templates/baseapp-django apps/api`

3. Do development setup on https://bitbucket.org/silverlogic/baseapp-ansible-v4/src/d6f8abd209d658f4f5011cd917877580604fb861/app-templates/baseapp-django/docs/START_APP.md?at=master&fileviewer=file-view-default
4. Do development setup on https://bitbucket.org/silverlogic/baseapp-ansible-v4/src/d6f8abd209d658f4f5011cd917877580604fb861/docs/START_PROJECT.md?at=master&fileviewer=file-view-default