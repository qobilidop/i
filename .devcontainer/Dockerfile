FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive

# Set locale
ENV LANG C.uft8

# Set time zone
RUN apt-get update && apt-get install -y tzdata \
    && ln -fs /usr/share/zoneinfo/PST8PDT /etc/localtime \
    && dpkg-reconfigure tzdata

# Install core packages
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    python-is-python3 \
    python3 \
    python3-pip \
    sudo
