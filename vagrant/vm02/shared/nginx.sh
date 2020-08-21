#! /bin/bash

PROCESS_NAME=nginx

count=`pgrep $PROCESS_NAME | wc -l`

if [ $count = 0 ]; then

    systemctl start nginx

    echo "$PROCESS_NAME is start"

else
    echo "$PROCESS_NAME is running"
fi
