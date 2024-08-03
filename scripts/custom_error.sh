mkdir /tmp/mydir
if [ $? -ne 0 ]; then
	    echo "Error: Directory /tmp/mydir could not be created. Check if you have the necessary permissions."
	        exit 1
fi

touch /tmp/mydir/myfile.txt
if [ $? -ne 0 ]; then
	    echo "Error: File /tmp/mydir/myfile.txt could not be created. Ensure the directory exists and is writable."
	        exit 1
fi
