#!/bin/bash

APP_LOGS_DIR=/home/centos/app-logs

DATE=$(date +%F)

SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript.logs
#/home/centos/shellscript-logs-scriptname-date.log
LOGFILE=$LOGSDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "$FILES_TO_DELETE"

while read line 
do
  echo "deleting $line" &>> $LOGFILE 
  rm -rf $line 
    
done <<< $FILES_TO_DELETE