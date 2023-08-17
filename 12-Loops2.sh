#!/bin/bash

## all perametrs or arguments will come and store in $@ and install one by one 


DATE=$(date +%F)

SCRIPT_NAME=$0

LOGFILE=/dev/$SCRIPT_NAME-$DATE.log


for i in $@
 do 
  yum install $i -y &>>$LOGFILE  
 done 