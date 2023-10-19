#!/bin/sh
# set -e

# pip3 install ansible
# ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml -Kvv --tags=vault --ask-vault-pass
