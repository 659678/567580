#!/bin/bash
sudo crontab -r -u ubuntu
cron="* * * * * sudo sh /home/ubuntu/bin/2d1_ETH_HL_j.sh"
(crontab -u ubuntu -l; echo "$cron" ) | crontab -u ubuntu -
