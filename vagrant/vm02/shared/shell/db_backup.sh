#!/bin/sh

db='menta_db'
user='root'
pass='hiroto373'
backupdir='/var/www/db_backup'
num=7

filename=${db}_`date +%y%m%d_%H%M`.sql
MYSQL_PWD=${pass} mysqldump -u${user} --set-gtid-purged=OFF ${db} > ${backupdir}/${filename}
chmod 600 ${backupdir}/${filename}
find ${backupdir} -name "${db}_*.sql" -mtime +${num} -delete