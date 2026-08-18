#!/bin/bash
LOGS_DIR=/var/log/raghava
LOG_FILE=$LOGS_DIR/precheck.log

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please get the root access and try.."
    exit 1
fi

id -a raghava
if [ $? -ne 0 ]; then 
    echo "User is not present"
    useradd raghava
fi