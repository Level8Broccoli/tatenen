#!/bin/bash

ansible-playbook ~/src/ansible/init-server-playbook.yml --user root --ask-vault-password "$@"
