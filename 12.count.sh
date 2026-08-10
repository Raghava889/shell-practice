#!/bin/bash
NUMBER=$1

if [ $NUMBER -gt 20 ]; then
echo "The given number $NUMBER is grater then 20"
elif [ $NUMBER -eq 20 ]; then
echo "The given number $NUMBER is qual to 20"
else 
echo "The given number $NUMBER is less then 20"
 fi   