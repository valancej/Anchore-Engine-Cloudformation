#!/bin/bash

apt-get -y update;

apt-get -y install \
apt-transport-https \
ca-certificates \
curl \
software-properties-common;
             
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
             
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable";
             
apt-get -y update;
apt-get -y install docker-ce;
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose;
chmod +x /usr/local/bin/docker-compose;
mkdir aevolume;
cd aevolume;
mkdir config && mkdir db
curl https://raw.githubusercontent.com/anchore/anchore-engine/master/scripts/docker-compose/config.yaml -o config/config.yaml;
curl https://raw.githubusercontent.com/anchore/anchore-engine/master/scripts/docker-compose/docker-compose.yaml -o docker-compose.yaml