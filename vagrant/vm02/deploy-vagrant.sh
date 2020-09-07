#! /bin/bash
cd `dirname $0`
PROCESS_NAME=vagrant
PROCESS_PARAMETER=$1

if [ $# = 0 ]; then
  echo "下記のように引数を指定して実行してください。(例) ./deploy-vagrant.sh  status,up,suspend"
else
  $PROCESS_NAME $PROCESS_PARAMETER
fi
