FROM ubuntu:24.10

RUN apt update -y && \
    apt upgrade -y && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt install -y curl \
        ldap-utils \
        openssl \
        telnet \
        tmux \
        vim \
        wget && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    apt install -y python3.12 \
        python3-pip