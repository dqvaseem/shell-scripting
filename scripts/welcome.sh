# defining function


function welcome() {
	echo "Welcome to, $1"
}

read -p "Enter your name: " username
welcome $username # calling function
