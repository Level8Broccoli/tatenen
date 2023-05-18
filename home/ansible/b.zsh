#!/usr/bin/zsh

ansible-playbook playbook.yml -i inventory.yml -u root "$@"

