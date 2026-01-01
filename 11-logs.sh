#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[30m"

LOGFILE="\tmp\$0-$TIMESTAMP.log"

echo "Script Started exeuting at $TIMESTAMP" &>>$LOGFILE
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
       echo -e "ERROR :: $2 ... $R FAILED $N"
       exit 1
    else
       echo -e "$2 .. $G SUCCESS $N"
    fi      
}