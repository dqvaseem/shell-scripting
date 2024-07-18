#!/bin/bash


<< comment  
This script takesbackup of given directory 
usage:
./backup.sh <path of directory> <path of backup dir>
comment

source_dir="$1"
target_dir="$2"
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir="${target_dir}/backup_${timestamp}"

function create_backup {

zip -r "${backup_dir}.zip" "${source_dir}" > /dev/null

if [ $? -eq 0 ]; then

	echo "Backup Created Successfully"
else 
	echo "Backup was not created for $timestamp"
fi

}

function perform_rotation {
	backups=($(ls -t "$target_dir/backup_"*.zip))


        if [ "${#backups[@]}" -gt 3 ]; then
		backups_to_remove=("${backups[@]:3}")
		for backup in "${backups_to_remove[@]}";
	       	do
			rm "$backup"
		done

           fi 

	}

create_backup
perform_rotation
