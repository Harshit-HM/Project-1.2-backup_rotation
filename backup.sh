#!/bin/bash

<< readme

this is a script for backup with 5 day rotation

usage:
./backup.sh <path to your source> <path to backup folder>
readme

function display_usage {

	echo "usage: ./backup.sh <path to your source> <path to backup folder>"
}	

if [ $# -eq 0 ]; then
 	display_usage
fi

SOURCE_DIR=$1
BACKUP_DIR=$2
DATE=$(date '+%F')

function create_backup {
	zip -r "${BACKUP_DIR}/backup_${DATE}.zip" "${SOURCE_DIR}"

	if [ $? -eq 0 ]; then
		echo "backup generated successfully for ${DATE}"
	fi

}


create_backup
