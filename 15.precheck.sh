#!/bin/bash
LOGS_DIR=/var/log/raghava
LOG_FILE=$LOGS_DIR/precheck.log

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please get the root access and try.."
    exit 1
fi

SERVER_LOG=$(ps -ef|wc -l;uname -r;ip a;df -hT;cat /etc/fstab) 
    echo "$SERVER_LOG" &> $LOG_FILE
    echo "Precheck completed. Log saved to: $LOG_FILE"