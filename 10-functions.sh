#!/bin/bash

ID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo "ERROR :: $2 .. Failed"
       exit 1
    else
       echo "$2 .. Successfully"
    fi   
}

    if [ $ID -ne 0 ]
    then 
        echo "ERROR : please run this script with root access "
        exit 1
    else
        echo "Your are root user"
    fi

yum install mysql -y

VALIDATE $1

yum install git -y

VALIDATE $1