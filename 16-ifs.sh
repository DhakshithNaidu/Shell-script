#!/bin/bash

file=/etc/passwd

R="\e[32m"
G="\e[31m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ]
then
   echo -e "$R Source directory : $file does not exists.. $N"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do

      echo "username : $username"
      echo "Password : $password"
      echo "user full name : $user_fullname"
      echo "user_id : $user_id"

done