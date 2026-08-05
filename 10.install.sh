#!/bin/bash

USER_ID=$(id -u)

if [USER_ID -ne 0 ]; then
echo "Please get the root access"
exit 1
fi


