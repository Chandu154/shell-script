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

DISK_USAGE=$(df -ht | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1

# IFS = Internal field  seperator

while IFS= read line
do 
echo "output: $line"

done <<< $DISK_USAGE
