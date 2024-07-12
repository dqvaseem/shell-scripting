#!/bin/bash

<< comment

Inside this we can write comment lines

comment





function create_user {
#function defining 


	read -p "Enter Username:" username
	read -p "Enter Password:" password
	sudo useradd -m -p "$password" "$username"

	echo "Created successfully"
}
#for (( i=1 ; i<=5; i++ ))
#do 
#create_user
#done

#create_user #function calling



function delete_user {
	        read -p "Enter the user name to be deleted: " username

		        sudo userdel -r $username

			        echo "USER $username deleted successfully"
			}

#			for (( i=1 ; i<=4 ; i++ ))
#			do
#				        delete_user
#				done
# i have a shell script 

function show_usage {
	echo "Welcome to user Management"
	echo "To create user use c as argument"
	echo "To delete user use d as argument"


}
case "$1" in 
	c)
	echo " Create user in Progress"
	create_user
	;;
        d)
	echo "Delete user in progress"
	delete_user
	;;
        *)
	show_usage
	;;

esac

#menu driven 



