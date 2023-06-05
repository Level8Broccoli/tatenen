#!/usr/bin/zsh

ansible-vault decrypt ~/.ssh/* && \
  ansible-playbook playbook.yml --user root --ask-vault-password "$@"

