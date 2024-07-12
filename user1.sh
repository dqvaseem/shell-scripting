for (( i=1; i<=4; i++ )); do
	read -p "Enter Username: " username
	read -sp "Enter Password: " password
	echo
	encrypted_password=$(openssl passwd -6 "$password")
	sudo useradd -m -p "$encrypted_password" "$username"
	if [ $? -eq 0 ]; then
		        echo "User '$username' created successfully."
			    else
				            echo "Failed to create user '$username'."
					        fi
					done
