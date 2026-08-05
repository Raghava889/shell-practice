#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "Please get the root access"

exit 1

fi

VALIDATE(){
    if [ $2 -ne 0 ]; then
    echo "installing $1 is failed"
    exit 1

    else
    echo "installing $1 is success"
fi
}

dnf list installed mysql

if [ $? -eq 0 ]; then
echo "mysql is already installed"
else
dnf install mysql -y

fi