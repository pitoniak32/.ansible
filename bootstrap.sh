#!/bin/sh

set -e

pip3 install ansible
ansible-galaxy install -r requirements.yml
ansible-playbook bootstrap.yml
