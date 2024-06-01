#!/bin/sh
# set -e

ansible-playbook playbook.yml -Kvv \
  # --skip-tags=gpg-work,ssh-work \
  --tags gpg-personal \
  --vault-id personal@prompt \
  # --vault-id work@prompt
