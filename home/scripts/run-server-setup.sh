#!/bin/bash

ansible-playbook ~/ansible/server-setup.yml --user root --ask-vault-password "$@"
