#!/usr/bin/zsh

ansible-vault decrypt ~/.ssh/* && \
  ansible-playbook playbook.yml --inventory inventory.yml --user root --ask-vault-password "$@"

