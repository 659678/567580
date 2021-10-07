#!/bin/bash
crontab -r
cron="* * * * * sudo sh /home/ubuntu/bin/2d1_ETH_HL_cr.sh"
(crontab -u ubuntu -l; echo "$cron" ) | crontab -u ubuntu -
