# Netbox Bootstrap

## Prerequisites

> The `direnv` config file `.envrc` will load the required environment variables using the `.env` file.

### Required libraries
- python
- poetry
- direnv

### Mandatory Setup

- Clone launchpad-config
	```sh
	git clone git@github.com:freshprinze/launchpad-config.git
	```

- Create symbolik link to `.env` inside launchpad-config
	```sh
	cd netbox-bootstrap
	ln -s <...>/launchpad-config/netbox/env .env
	```

## Run

1. Load basic data

	```sh
	ansible-playbook load-basic-data.yaml -l netbox_nodes --tags basic --user=serveradmin
	```

## References

- [Netbox Ansible Collection Documentation](https://netbox-ansible-collection.readthedocs.io/en/latest/)