#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="\tmp\$0-$TIMESTAMP.log"
  echo "Scripting started exeuting at $TIMESTAMP" &>>$LOGFILE

VALIDATE() {
    if [ $1 -ne 0 ]
    then
       echo -e "$2...$R FAILED $N"
    else
       echo -e "$2...$G SUCCESS $N"
    fi      
}

if [ $ID -ne 0 ]
then 
   echo -e "$R ERROR : Please run this Script with root access $N "
   exit 1 # you can give other then 0
else
   echo "Your Root User"
fi # fi means reverse of if, indicating Condition end

# echo "All arguments passed :$@"
# git mysql postfix net-toos
# packages=git for first package is checking

for package in $@
do
    yum list installed $package &>>$LOGFILE # check package installed or not
    if [ $? -ne 0 ] # if not installed
    then 
       yum install $package -y &>>$LOGFILE # install the package
       VALIDATE $? "Installation of $package" #Validate
    else
       echo -e "$package is already installed ... $Y Skipping $N"  
    fi    
done        