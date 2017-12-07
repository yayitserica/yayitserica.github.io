#!/usr/bin/env bash

echo "Updating..."
apt-get update -y >> /dev/null

echo 'Install Some default packages'
apt-get install -y curl git vim gcc
#apt-get install python-dev -y

echo 'Set the Timezone'
ln -sf /usr/share/zoneinfo/UTC /etc/localtime

#echo 'INSTALL MYSQL'

#This will set the password to root for all user.
#echo "mysql-server mysql-server/root_password  password root" | sudo debconf-set-selections
#echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections
#apt-get -y install mysql-client mysql-server >> /dev/null
#sed -i '/^bind-address/s/bind-address.*=.*/bind-address = 0.0.0.0/' /etc/mysql/my.cnf
#service mysql restart
#
#echo 'Allow root access from any host'
#echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION" | mysql -u root --password=root
#echo "GRANT PROXY ON ''@'' TO 'root'@'%' WITH GRANT OPTION" | mysql -u root --password=root
#
#echo "Enable Mysql for python"
#apt-get install python-mysqldb -y
#apt-get install libmysqlclient-dev -y >> /dev/null
#pip install MySQL-python

#echo "install pillow"
#pip install pillow >> /dev/null

#echo "install NPM"
#apt-get install npm -y >> /dev/null

#echo "install Node"
#apt-get install -y nodejs >> /dev/null

echo "install Nginx"
apt-get install -y nginx

echo "start Nginx Service"
service nginx start

#echo 'Enable scripts'
#chmod +x /vagrant/scripts/start_project.sh
#chmod +x /vagrant/scripts/run_project.sh
#chmod +x /vagrant/scripts/start_new_project.sh
#
#echo 'adding scripts as alias'
#echo "alias start_project='/vagrant/scripts/start_project.sh'" >> ~/.bashrc
#echo "alias run_project='/vagrant/scripts/run_project.sh'" >> ~/.bashrc
#echo "alias start_new_project='/vagrant/scripts/start_new_project.sh'" >> ~/.bashrc
