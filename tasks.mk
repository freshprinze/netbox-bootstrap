#!make

ANSIBLE=ansible-playbook
SHELL=/bin/bash

load:
	$(ANSIBLE) 'load-basic-data.yaml' '-vvvv'