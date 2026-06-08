echo "System Health: $(hostname)"
echo "Date: $(date)"
echo "Uptime"
uptime
echo ""
echo "CPU Usage (By %)  and Temps"
top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}'
sensors | grep "Package id 0"
echo ""
echo "Ram and Swap Usage"
free -h -t
echo "" 
echo "Disk Usage"
df -hx tmpfs
