#!/usr/bin/zsh

ansible-playbook ~/volume/ansible/playbook.yml --user root --ask-vault-password "$@"
