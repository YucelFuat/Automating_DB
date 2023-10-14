#!/bin/bash


DB_USER="yucel"
DB_PASS="fuat"
DB_NAME="devops_task"


sudo tee /etc/yum.repos.d/MariaDB.repo <<EOF
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.5/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOF


sudo yum -y update


sudo yum -y install MariaDB-server MariaDB-client


sudo systemctl start mariadb
sudo systemctl enable mariadb


sudo mysql -e "CREATE DATABASE $DB_NAME;"


sudo mysql -e "CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"
sudo mysql -e "GRANT SELECT ON $DB_NAME.* TO '$DB_USER'@'localhost';"


sudo mysql -e "FLUSH PRIVILEGES;"


sudo mysql -e "USE $DB_NAME; CREATE TABLE interviews (id int not null auto_increment, name varchar(255), primary key (id));"
