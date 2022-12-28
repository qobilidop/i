FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"] 

# Set locale
ENV LANG C.uft8

# Set time zone
RUN apt-get update && apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/PST8PDT /etc/localtime && \
    dpkg-reconfigure tzdata

# Install core packages
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    python-is-python3 \
    python3 \
    python3-pip \
    sudo

# https://starship.rs
RUN curl -sS https://starship.rs/install.sh | sh -s -- -y && \
    printf '\n\neval "$(starship init bash)"\n' >> /root/.bashrc

# https://github.com/nvm-sh/nvm
ENV NVM_DIR /usr/local/nvm
RUN mkdir -p ${NVM_DIR} && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
RUN source ${NVM_DIR}/nvm.sh && nvm install node
