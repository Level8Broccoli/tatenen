#!/bin/bash

ansible-playbook ~/ansible/playbook.yml --user root --ask-vault-password "$@"
