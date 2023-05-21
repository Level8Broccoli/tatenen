#!/usr/bin/zsh

ansible-vault decrypt ~/.ssh/id_rsa && \
  ansible-playbook playbook.yml --inventory inventory.yml --user root --ask-vault-password "$@"

