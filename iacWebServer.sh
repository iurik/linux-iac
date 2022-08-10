#!/bin/bash
echo "UPDATE E UPGRADE..."
apt-get update
apt-get upgrade -y

echo "INSTALANDO APACHE..."
apt-get install apache2 -y

echo "INSTALANDO UNZIP..."
apt-get install unzip -y

echo "BAIXANDO APLICACAO..."
cd /tmp
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "EXTRAINDO E COPIANDO APLICACAO..."
unzip main.zip

cd linux-site-dio-main

cp -R *  /var/www/html/


cd /
