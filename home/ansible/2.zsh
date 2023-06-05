#!/usr/bin/zsh

ansible-playbook playbook.yml --user root --ask-vault-password "$@"

