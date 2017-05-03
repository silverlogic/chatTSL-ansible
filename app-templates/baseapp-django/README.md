# Configuration & Deployment

For in depth documentation see the `/docs` directory.

## Development

Isolated development environments are created using [VirtualBox](https://www.virtualbox.org/)and [Vagrant](https://www.vagrantup.com/).
Ensure you have both pieces of software installed and reasonably up to date.

### Quick Start

Start and configure the required VMs.  This could take a while:

```
vagrant up db web
```

SSH to the web VM

```
vagrant ssh web
```

Activate the development environment

```
./dev
```

Refer to the Django README for common operations you can perform.

## Live (Production & Staging)

Configure everything

```
ansible-playbook config_all.yml -i environments/<staging or production> --ask-vault-pass
```

Deploy specific components

```
ansible-playbook config_<component>.yml -i environments/<staging or production> --ask-vault-pass
```
