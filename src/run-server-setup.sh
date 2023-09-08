#!/bin/bash

ansible-playbook ~/src/ansible/server-setup.yml --user root --ask-vault-password "$@"
