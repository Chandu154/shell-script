#!/bin/bash

#clours
#validations
# log redirections                

DATE=$(date +%F)

SCRIPT_NAME=$0
LOGSDIR=/tmp
#/home/centos/shellscript-logs-scriptname-date.log
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"    

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1
message=""

# IFS = Internal field  seperator

while IFS= read line
do 
 # this command will give you usage in number formate for comparison
usage=$(echo  $line | awk '{print$6}'|cut -d % -f1)
 #This commmand will give us parttion
partition=$(echo $line | awk '{print$1}') 
# now we need to check more then threshold or not 
 if [ $usage -gt $DISK_USAGE_THRESHOLD ]
  then
  message+="HIGH DISK USAGE on $partition: $usage \n"
  fi 
done <<< $DISK_USAGE

echo -e "message: $message"