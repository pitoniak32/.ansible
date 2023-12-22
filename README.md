# .ansible
ansible-playbook to configure a new machine

## Ready To Go!
- Ubuntu : YES
- MacOS  : NO
- Manjaro: YES

# How to use
1. install git 
  - MacOs: `xcode-select --install`
  - Manjaro: `pacman -S git`
  - Ubuntu: `sudo apt install git`
2. install programs for respective OS from Dockerfile
3. clone this repo `git clone https://github.com/pitoniak32/.ansible.git`
4. for personal use
  - just run `./bootstrap.sh`.
5. for work use
  - need to run run `./bootstrap.sh` to get personal ssh key
  - `git submodules init && git submodules update`
  - update the file removing skip-tags for `gpg-work`, and `ssh-work`.
    - work gpg is still a work in progress due to yubi key gpg.
  - run `./bootstrap.sh`

# Run in Docker container
manjaro:
```
docker build -f Dockerfile.manjaro . -t ansible-manjaro && \
docker run --entrypoint=/bin/bash -it ansible-manjaro
```
ubuntu:
```
docker build -f Dockerfile.ubuntu . -t ansible-ubuntu && \
docker run --entrypoint=/bin/bash -it ansible-ubuntu
```

## You can select tasks with
To only run tasks that would add personal ssh keys:
```
ansible-playbook playbook.yml -Kvv --tags "ssh-personal"
```
