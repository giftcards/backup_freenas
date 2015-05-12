#!/bin/bash

# Import our config file with the serverlist of freenas instances to back up and our username/keyfile
. /etc/backup_freenas.conf
today=`date +%Y%m%d`

for server in ${serverlist[@]}; do
    echo $server
    if [ ! -d "${backupdir}/${today}/${server}" ]; then
        mkdir -p ${backupdir}/${today}/${server}
    fi
    scp -o StrictHostKeyChecking=no -i ${keyfile} ${user}@${server}:/data/*.db* ${backupdir}/${today}/${server} || echo "`date` $0 failed for ${server}" | mail -s "Freenas Backup Failed" ${alerts} 
done
