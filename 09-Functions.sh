#!/bin/bash

 # our goal is to install the mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log


## This function should  validate the previous command is ececuted success or not


VALIDATE () {
    #$1 it will receive the arguments.
    if [ $1 -ne 0 ]
  then 
     echo "$2... Failure"
     exit 1
  else 
    echo "$2... success"
fi   
}

USERID=$(id -u)
 
if [ $USERID -ne 0 ]
 then 
    echo "error:please run this script with root access"
      exit 1
  #else
    #echo "Info:you are root access" 
fi 
## it i sour responsibility again check the installation is success or not  
##yum installlll mysql -y 

yum install mysql -y &>>$LOGFILE 

VALIDATE $? "Installing mysql"
  #we are passing the input to function ,exit status of statement 
    

## installation of postfix 
 yum install postfix -y  &>>$LOGFILE 

 VALIDATE $? "Installing portfix"
