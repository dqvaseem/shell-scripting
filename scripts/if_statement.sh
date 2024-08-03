mkdir /tmp/mydir
if [ $? -ne 0 ]; then
	    echo "Failed to create directory /tmp/mydir"
	        exit 1
fi

touch /tmp/mydir/myfile.txt
if [ $? -ne 0 ]; then
	    echo "Failed to create file /tmp/mydir/myfile.txt"
	        exit 1
fi
