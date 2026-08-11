#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log" # /home/ec2-user/shell-logs/10-logs.sh.log

if [ $USERID -ne 0 ]; then

echo "Please get the root access and try the installation...skipping"
exit 1

fi

Raghava(){
    if [ $2 -ne 0 ]; then
    echo "Installing $1 is faild"
    exit 1
    else
    echo "Installing $1 is success"

    fi
}
 
 dnf list installed mysql &>> $LOGS_FILE
 if [ $? -ne 0 ]; then
 echo "package not installed now installing the package"
 dnf install mysql -y &>> $LOGS_FILE
 Raghava "mysql" $?
 else
 echo "Package already installed"
 fi