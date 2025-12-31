#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo "ERROR :: please run this script with root access"
    exit 1
else 
    echo "You are root user"
fi

yum install mysql -y
systemctl start mysql
systemctl enable mysql
echo "mysql install successfully"