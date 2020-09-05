#! /bin/bash
cd `dirname $0`

if [ $# = 0 ]; then
  echo "下記のようにstatusを指定して実行してください。(例) ./deploy-vagrant.sh  status,up,suspend"
 else
   if [ $# = 'status' ]; then
     vagrant status
   fi
   if [ $# = 'up' ]; then
     vagrant up
   fi
   if [ $# = 'suspend' ]; then
     vagrant suspend
   fi
fi