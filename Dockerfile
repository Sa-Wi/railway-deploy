# Menggunakan base image Ubuntu
FROM ubuntu:latest

# Install update dan paket dasar
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    git \
    vim \
    ufw \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# Set user environment
RUN adduser --disabled-password --gecos '' user && \
    adduser user sudo

# Akses file log atau app kamu di sini
WORKDIR /home/user

# Command default saat container dijalankan
CMD ["/bin/bash"]
