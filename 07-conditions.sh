#!/bin/bash

## writing the condition to check the number is greater or less then the 10 

NUMBER=$1

if [ $NUMBER -gt 10  ]
 then 
  echo "$NUMBER is greater then 10"
 else
  echo "$NUMBER is less then 10" 
fi  