#!/bin/bash
sudo crontab -r -u ubuntu
cron="* * * * * sudo sh /home/ubuntu/bin/ethminer_hm_j.sh"
(crontab -u ubuntu -l; echo "$cron" ) | crontab -u ubuntu -
