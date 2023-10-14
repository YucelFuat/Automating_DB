# Automating_DB
In this project, I've streamlined the process of creating a virtual machine (VM) and automating the deployment of a database with specific configurations.

# The task is below;
Automate installation of MariaDB 10.5 on Centos 7 EC2 instance (or another type of VM), followed by creation of new database and user with SELECT privilege only to all tables.
 
By automation we accept any of:
- bash scripts
- detailed notes
- use of framework like ansible/puppet/chef/terraform/cloudformation
 
The name of database to be created is "devops_task" with following schema:
 
CREATE TABLE `interviews` (
id int not null auto_increment,
name varchar(255),
primary key (id)
);

# My aim
My aim is to make this whole process in one command.

Firstly, I used Google Cloud CLI tool and write a script called script.sh
This script is responsible to make all installation and configuration of Our DB. 
It install the exact version of MariaDB with it's dependencies and make necessary configs. (Such as creating schema and table and give priviledges etc)

Then I located that script in my current directory in the cloud and run config command to create a Centos 7 VM and start this script in the beggining.
While system is creating that instance I checked log to make sure that script is running smooth. (Please check Instance Log.png)

