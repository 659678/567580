#!/bin/bash
cd /home/ubuntu/Phoenix
sudo 5a_PH_ETH_HM_shut.sh
echo "Shutdown....."
sudo sh 5a_PH_ETH_HM_sta.sh
tail -F log.log

