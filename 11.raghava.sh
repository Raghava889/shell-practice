#!/bin/bash

USERID=$(id -u) 
if [ $USERID -ne 0 ]; then
echo "Please get the root access"
exit 0
fi

dnf list installed nginx

if [ $? -eq 0 ] ; then
echo "Package already installed"
else

dnf install nginx -y

if [ $? -eq 0 ]; then
echo "Package installed successfully"

else
echo "Package installation failed"

    fi
fi