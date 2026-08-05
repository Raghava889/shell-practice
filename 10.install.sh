#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please get the root access"
exit 1
fi


