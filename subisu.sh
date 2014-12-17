#!/bin/bash
# ping checker tool

SERVER="google.com"
SUBISULOGINIP="http://202.63.240.10/userportal/login.do?requesturi=http%3A%2F%2F1.254.254.254%2F"
username="manish"
password="smth"
ping -c 1 $SERVER >/dev/null 2>&1
if [ $? -ne 0 ] ; then #if ping exits nonzero...
    # FAILS=$[FAILS + 1]
    echo "SERVER doesnt exits"
else
    echo "SERVER exits"
fi

# echo "type=1&username=$username&password=$password"
curl --data "type=1&username=$username&password=$password" $SUBISULOGINIP