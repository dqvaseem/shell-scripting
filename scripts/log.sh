usage() {
	 echo "Usage: $0 <path_to_log_file>"
	 exit 1
}

if [ $# -ne 1 ]; then
	    usage
fi

LOG_FILE=$1

if [ ! -f "$LOG_FILE" ]; then
	    echo "Error: Log file $LOG_FILE does not exist."
            exit 1
fi

ERROR_KEYWORD="ERROR"
CRITICAL_KEYWORD="CRITICAL"
DATE=$(date +"%Y-%m-%d")
SUMMARY_REPORT="summary_report_$DATE.txt"
ARCHIVE_DIR="processed_logs"

{
    echo "Date of analysis: $DATE"
    echo "Log file name: $LOG_FILE"
} > "$SUMMARY_REPORT"

TOTAL_LINES=$(wc -l < "$LOG_FILE")
echo "Total lines processed: $TOTAL_LINES" >> "$SUMMARY_REPORT"

ERROR_COUNT=$(grep -c "$ERROR_KEYWORD" "$LOG_FILE")
echo "Total error count: $ERROR_COUNT" >> "$SUMMARY_REPORT"

echo "List of critical events with line numbers:" >> "$SUMMARY_REPORT"
grep -n "$CRITICAL_KEYWORD" "$LOG_FILE" >> "$SUMMARY_REPORT"

declare -A error_messages
while IFS= read -r line; do
	    if [[ "$line" == *"$ERROR_KEYWORD"* ]]; then
		            message=$(echo "$line" | awk -F"$ERROR_KEYWORD" '{print $2}')
			            ((error_messages["$message"]++))
           fi
done < "$LOG_FILE"

echo "Top 5 error messages with their occurrence count:" >> "$SUMMARY_REPORT"
for message in "${!error_messages[@]}"; do
      echo "${error_messages[$message]} $message"
      done | sort -rn | head -n 5 >> "$SUMMARY_REPORT"


      if [ ! -d "$ARCHIVE_DIR" ]; then
        mkdir -p "$ARCHIVE_DIR"
fi

cp "$LOG_FILE" "$ARCHIVE_DIR/"
echo "Log file has been moved to $ARCHIVE_DIR."


cat "$SUMMARY_REPORT"
