#!/bin/bash

sudo /etc/init.d/mysql stop
sudo /etc/init.d/postfix stop
sudo /etc/init.d/timidity stop
sudo /etc/init.d/cups stop
sudo /etc/init.d/cron stop
sudo /etc/init.d/atd stop
sudo /etc/init.d/apache2 stop
sudo /etc/init.d/bluetooth stop
sudo /etc/init.d/ondemand stop
sudo cpufreq-set -g performance -r

