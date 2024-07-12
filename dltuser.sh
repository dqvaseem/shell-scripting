#!/bin/bash


#function define

function delete_user {
	read -p "Enter the user name to be deleted: " username

	sudo userdel -r $username

	echo "USER $username deleted successfully"
}

for (( i=1 ; i<=4 ; i++ ))
do 
	delete_user
done
