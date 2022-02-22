fi
service apache2 restart > /dev/null 2>&1
clear
echo '* * * * * root /usr/bin/php /var/www/html/pages/system/cron.php' >> /etc/crontab
echo '* * * * * root /usr/bin/php /var/www/html/pages/system/cron.ssh.php ' >> /etc/crontab
echo '* * * * * root /usr/bin/php /var/www/html/pages/system/cron.sms.php' >> /etc/crontab
echo '* * * * * root /usr/bin/php /var/www/html/pages/system/cron.online.ssh.php' >> /etc/crontab
echo '10 * * * * root /usr/bin/php /var/www/html/pages/system/cron.servidor.php' >> /etc/crontab
echo '*/30 * * * * root /usr/bin/php /var/www/html/pages/system/cron.limpeza.php' >> /etc/crontab
/etc/init.d/cron reload > /dev/null 2>&1
/etc/init.d/cron restart > /dev/null 2>&1
chmod 777 /var/www/html/administra/pages/servidor/ovpn
chmod 777 /var/www/html/administra/pages/download
chmod 777 /var/www/html/administra/pages/faturas/comprovantes
service apache2 restart > /dev/null 2>&1
clear
