#!make

ANSIBLE=ansible-playbook
SHELL=/bin/bash

load-basic:
	$(ANSIBLE) 'load-basic-data.yaml' --user=serveradmin --tags=ipam

create-devices:
	$(ANSIBLE) 'create-devices.yaml' --user=serveradmin