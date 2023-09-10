#!/bin/bash

ansible-playbook ~/src/playbooks/init-server-playbook.yml --user root --ask-vault-password "$@"
