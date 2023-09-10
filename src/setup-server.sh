#!/bin/bash

ansible-playbook ~/src/ansible/setup-server-playbook.yml --user root --ask-vault-password "$@"
