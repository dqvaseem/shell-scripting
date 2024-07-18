echo " Today date is $(date)"
echo " Disk space is $(df -h) "
echo " ram : $(free -h)"
echo "disk is $(df -h | awk 'NR==2 {print $2}') & ram is $(free -h | awk 'NR==2 {print $2}')"

