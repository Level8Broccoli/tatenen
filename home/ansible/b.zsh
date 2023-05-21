#!/usr/bin/zsh

ansible-playbook playbook.yml --inventory inventory.yml --user root --ask-vault-password "$@"

