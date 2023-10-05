#!/bin/bash

echo "Starting backup..."

rsync -a --delete /home/user/ /tmp/backup

if [ "$?" -eq 0 ]; then
	        logger "Backup successfully"
	else    logger "Backup failed"
fi

echo "Backup completed."
