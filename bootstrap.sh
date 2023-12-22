#!/bin/sh
# set -e

ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml -Kvv \
  --skip-tags=gpg-work,ssh-work,gpg-personal,ssh-personal
  # --vault-id personal@prompt
  # --vault-id work@prompt \
