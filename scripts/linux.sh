# Check if the script has received the expected number of arguments
if [ $# -ne 2 ]; then
	 echo "Usage: $0 <arg1> <arg2> ..." 
         exit 1
fi
echo "Total number of arguments: $#"
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"


echo "All arguments:"
for arg in "$@"; do
	    echo "$arg"
done
