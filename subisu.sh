#!/bin/bash
# ping checker tool

SERVER="google.com.np"

ping -c 1 $SERVER >/dev/null 2>&1
if [ $? -ne 0 ] ; then #if ping exits nonzero...
    # FAILS=$[FAILS + 1]
    echo "SERVER doesnt exits"
else
    echo "SERVER exits"
fi