cd /home/ubuntu/TREX
sudo ps -ef | grep 't-rex' | grep -v grep | awk '{print $2}' | xargs -r kill -9
