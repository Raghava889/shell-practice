#!/bin/bash
LOG_DIR=/var/log/shell-script
LOG_FILE=$LOG_DIR/$0.log

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
echo "Please get the root access for this task"
exit 1
fi

VALIDATE(){
    if [ $2 -ne 0 ]; then
    echo "Installing $1 is failed"
    else
    echo "Installing $1 is success"
fi
}

dnf list installed mysql &>> $LOG_FILE
if [ $? -ne 0 ]; then
echo "Package not installed and installing now"
dnf install mysql -y &>> $LOG_FILE
VALIDATE "mysql" $?
else
echo "Package installed alredy"
fi