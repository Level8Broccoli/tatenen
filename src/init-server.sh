#!/bin/bash

ansible-playbook ~/src/ansible/init-server.yml --user root --ask-vault-password "$@"
