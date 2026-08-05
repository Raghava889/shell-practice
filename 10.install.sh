#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please get the root access"
exit 1
fi

dnf list installed mysql

if [ $? -eq 0 ]; then

echo "Package already installed...."
elase 

dnf install mysql

fi