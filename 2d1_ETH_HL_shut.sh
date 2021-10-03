cd /home/ubuntu/bin
sudo ps -ef | grep 'ethminer' | grep -v grep | awk '{print $2}' | xargs -r kill -9
