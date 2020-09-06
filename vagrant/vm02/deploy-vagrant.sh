#! /bin/bash
cd `dirname $0`
PROCESS_NAME=vagrant

if [ $# = 0 ]; then
  echo "下記のようにstatusを指定して実行してください。(例) ./deploy-vagrant.sh  status,up,suspend"
 else
   if [ $1 = 'status' ]; then
     $PROCESS_NAME status
   fi
   if [ $1 = 'up' ]; then
     $PROCESS_NAME up
   fi
   if [ $1 = 'suspend' ]; then
     $PROCESS_NAME suspend
   fi
fi
