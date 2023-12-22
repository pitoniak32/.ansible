# .ansible
ansible-playbook to configure a new machine

## Ready To Go!
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
```
docker build -f Dockerfile.manjaro . -t ansible-manjaro && \
docker run --entrypoint=/bin/bash -it ansible-manjaro
```

## You can select tasks with
To only run tasks that would add personal ssh keys:
```
ansible-playbook playbook.yml -Kvv --tags "ssh-personal"
```
