#!/bin/bash

ansible-playbook ~/src/ansible/setup-server.yml --user root --ask-vault-password "$@"
