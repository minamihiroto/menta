#! /bin/bash
cd `dirname $0`
PROCESS_NAME=vagrant

if [ $# = 0 ]; then
  echo "下記のように引数を指定して実行してください。(例) ./deploy-vagrant.sh  status,up,suspend"
 else
  if [ $1 = 'status' ]; then
    $PROCESS_NAME status
  else
    if [ $1 = 'up' ]; then
      $PROCESS_NAME up
    else
      if [ $1 = 'suspend' ]; then
        $PROCESS_NAME suspend
      else
        echo "正しい引数を指定してください。(例) ./deploy-vagrant.sh  status,up,suspend"
      fi
    fi
  fi
fi
