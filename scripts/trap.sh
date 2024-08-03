temp_file="/root/task3/tempfile_$$.txt"
touch "$temp_file"
echo "Temporary file created at $temp_file"

trap 'echo Deleting temporary file; rm -f "$temp_file"' EXIT

echo "Script is running..."
sleep 10

echo "Script completed successfully."
