#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please get the root acceess"
exit 1

fi

echo "Installing the nginx package"

dnf list installed nginx

if [ $? -eq 0 ]; then 

echo "Package already installed"

else 

dnf install nginx -y

fi
