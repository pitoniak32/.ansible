# .ansible
ansible-playbook to configure a new machine

## Read To Go!
- Ubuntu : YES
- MacOS  : NO
- Manjaro: NO

# How to use
1. install git 
  - MacOs: `xcode-select --install`
  - Manjaro: `pacman -S git`
  - Ubuntu: `sudo apt install git`
2. clone this repo `git clone git@github.com:pitoniak32/.ansible.git`
3. run `./bootstrap.sh`

# Run in Docker container
1. Run `docker build . -t ansible && docker run --entrypoint=/bin/bash -it ansible`.
2. From in the docker container run `./bootstrap.sh` to run the ansible playbook.

## You can select tasks with
To only run tasks that would add personal ssh keys:
```
ansible-playbook playbook.yml -Kvv --tags "ssh-personal"
```
