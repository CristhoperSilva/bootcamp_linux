#! /bin/bash

echo "Atualizando Sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando programas..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "Configurando aplicação..."
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
