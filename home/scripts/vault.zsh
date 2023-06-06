#!/usr/bin/zsh

mkdir ~/.ssh/
mv ~/vault/id_rsa ~/vault/id_rsa.pub ~/vault/known_hosts ~/.ssh/
ansible-vault decrypt ~/.ssh/* 
