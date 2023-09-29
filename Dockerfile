FROM ubuntu

RUN apt-get update && \
  apt-get install -y \
    sudo \
    git \
    gpg \
    vim \
    python3 \
    python3-pip \
    software-properties-common \
  && \
  pip3 install ansible


# Add non-root user with sudo ability and trivial password
RUN useradd --create-home davidpi --group sudo && echo "davidpi:p" | chpasswd
USER davidpi

WORKDIR /tmp

COPY . .

ENTRYPOINT ./bootstrap.sh
