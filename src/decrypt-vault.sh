#!/bin/bash

mkdir ~/.ssh/
cp ~/src/vault/id_rsa ~/src/vault/id_rsa.pub ~/src/vault/known_hosts ~/.ssh/
ansible-vault decrypt ~/.ssh/*
