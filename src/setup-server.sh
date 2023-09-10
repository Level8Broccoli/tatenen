#!/bin/bash

ansible-playbook ~/src/playbooks/setup-server-playbook.yml --user root --ask-vault-password "$@"
