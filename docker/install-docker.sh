#!/bin/bash

echo "[TASK 1] Install docker"

sudo bash ./get-docker.sh

echo "[TASK 2] add permission to ${USER} user"
sudo usermod -aG docker ${USER}

echo "[TASK 3] Install docker-compose"

sudo apt-get install -y docker-compose


