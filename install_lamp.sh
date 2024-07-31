#!/bin/bash

# Actualizar la lista de paquetes
sudo apt update

# Instalar Apache
sudo apt install -y apache2

# Instalar MySQL
sudo apt install -y mysql-server
sudo mysql_secure_installation

# Instalar PHP
sudo apt install -y php libapache2-mod-php php-mysql

# Reiniciar Apache para aplicar los cambios
sudo systemctl restart apache2

# (Opcional) Instalar módulos PHP adicionales
sudo apt install -y php-curl php-gd php-xml php-mbstring
