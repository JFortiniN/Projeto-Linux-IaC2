#!/bin/bash

echo "Iniciando Scrypt"

echo "atualizando o servidor"

apt update

apt upgrade -y

echo " instalando apache2"

apt install apache2 -y

echo "instalando unzip"

apt install unzip -y

echo "instalando wget2"
apt install wget2

echo "baixando aplicação em diretorio tmp"

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando arquivos"

unzip main.zip

echo "copiando arquivos para diretorio apache"

cd linux-site-dio-main/

cp -R * /var/www/html

echo "fim do scrypt"
