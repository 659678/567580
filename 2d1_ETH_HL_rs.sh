#!/bin/bash
cd /home/ubuntu/bin
sudo sh 2d1_ETH_HL_shut.sh
echo "Shutdown....."
sudo sh 2d1_ETH_HL_sta.sh
tail -F log.log
