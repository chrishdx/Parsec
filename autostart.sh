#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "@reboot parsecd" >> mycron
#install new cron file
crontab mycron
rm mycron
