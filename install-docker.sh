#!/bin/sh
echo installing Docker
# https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt remove -y docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install -y  \
   apt-transport-https \
   ca-certificates \
   curl \
   gnupg-agent \
   software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

 sudo systemctl enable docker.service
 sudo systemctl start docker.service

 sudo gpasswd --add ${USER} docker

 echo "Now logout and login again and you will be able to use docker with current user account ${USER}"
