#!bin/bash
cd /home/ubuntu/TREX/
sudo sh 5a_tr_shut_hm.sh
echo "Shutdown....."
sudo sh 5a_tr_start_hm.sh
tail -F log.log

