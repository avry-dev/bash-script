
for service in ssh cron nginx
do
status=$(systemctl is-active "$service")
if [[ "$status" == "active" ]]; then
echo "$service is Active"
else
echo "$service is Inactive"
fi
done


