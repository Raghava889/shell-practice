#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please get the root acceess"
exit 1

fi

echo "removing the packages"

dnf remove nginx -y