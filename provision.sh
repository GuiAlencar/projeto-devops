#!/bin/bash

echo "Instalando o ansible"

apt update && apt install ansible -y

cd /vagrant
ansible-playbook playbook.yaml

docker-compose up -d --remove-orphans
