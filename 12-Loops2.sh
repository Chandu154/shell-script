#!/bin/bash

## all perametrs or arguments will come and store in $@ and install one by one 


DATE=$(date +%F)

SCRIPT_NAME=$0

LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"


for i in $@
 do 
  yum install $i -y &>>$LOGFILE  
 done 
STATUS=$i  

## sudo sh 12-Loops git postfix

VALIDATE () {
    #$1 it will receive the arguments.
    if [ $1 -ne 0 ]
  then 
     echo -e "$2... $R Failure $N"
     exit 1
  else 
    echo -e "$2... $G success $N"
fi   
} 

VALIDATE $? "installing git"
 VALIDATE $? "Installing portfix" 