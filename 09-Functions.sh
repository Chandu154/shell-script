#!/bin/bash

 # our goal is to install the mysql

USERID=$(id -u)

## This function should  validate the previous command is ececuted success or not .
VALIDATE () {
    if [ $1 -ne 0 ]
  then 
     echo "installation of mysql is error"
     exit 1
  else 
    echo "installation of mysql is success"
fi   
}

if [ $USERID -ne 0 ]
 then 
    echo "error:please run this script with root access"
      exit 1
  #else
    #echo "Info:you are root access" 
fi 
## it i sour responsibility again check the installation is success or not  

yum install mysql -y 

VALIDATE $?  #we are passing the input to function ,exit status of statement 
    

## nstallation of post fix 
 yum install postfix -y

 VALIDATE $?
