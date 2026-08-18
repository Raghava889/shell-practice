#!/bin/bash
LOG_DIR=/var/log/raghava
LOG_FILE=$LOG_DIR/$0.log

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
    echo "Please get the root access and try"
    exit 1
fi

VALIDATE(){
if [ $2 -ne 0 ]; then
    echo " Installing $1 is failed"
    else
    echo "Installing $1 is success"
fi
}

for package in $@
do
    dnf list installed $package &>> $LOG_FILE
if [ $? -ne 0 ]; then
    dnf install $package -y &>> $LOG_FILE
VALIDATE "$package" $?
else
 echo "Package is already installed"
fi
done