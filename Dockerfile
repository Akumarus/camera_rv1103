FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    ssh \
    make \
    gcc \
    g++ \
    gcc-multilib \
    g++-multilib \
    module-assistant expect \
    gawk \
    texinfo \
    libssl-dev \
    bison \
    flex \
    fakeroot \
    cmake \
    unzip \
    gperf \
    autoconf \
    device-tree-compiler \
    libncurses5-dev \
    pkg-config \
    bc \
    python-is-python3 \
    passwd \
    openssl \
    openssh-server \
    openssh-client \
    vim \
    file \
    cpio \
    rsync \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["/bin/bash"]