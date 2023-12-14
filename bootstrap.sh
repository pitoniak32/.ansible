#!/bin/sh
# set -e

pip3 install ansible
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml -Kvv \
  --skip-tags=work \
  --vault-id personal@prompt \
  --vault-id work@prompt
