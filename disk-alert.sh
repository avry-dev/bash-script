usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
if [ "$usage" -gt 80 ]
then
 echo "Disk is almost full"
else
 echo "Disk is fine" 
fi
