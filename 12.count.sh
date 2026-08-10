#/bin/bash

USERID=$(id -u)
if ($USERID -ne 0); then
echo "get the root access"
exit
fi