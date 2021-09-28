cd /home/ubuntu/Phoenix
sudo ps -ef | grep 'PhoenixMiner' | grep -v grep | awk '{print $2}' | xargs -r kill -9
