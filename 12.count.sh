#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "Please get the root access and try the installation...skipping"
exit 1

fi

VALIDATE(){
    if [ $2 -ne 0 ]; then
    echo "Installing $1 is faild"
    exit 1
    else
    echo "Installing $1 is success"

    fi
}
 
 dnf list installed mysql
 if [ $? -ne 0 ]; then
 echo "package not installed now installing the package"
 dnf install mysql -y
 VALIDATE "MYSQL" $?
 else
 echo "Package already installed"
 fi