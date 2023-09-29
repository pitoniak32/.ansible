

# .ansible
ansible to init a new machine

## TODO
- [ ] Order of operations when installing zsh
- [ ] Add Dockerfile for testing setup on linux

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