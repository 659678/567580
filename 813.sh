cd /home/ubuntu

wget https://raw.githubusercontent.com/659678/567580/main/ethminer.tar.gz
tar zxvf ethminer.tar.gz
cd bin/
wget https://raw.githubusercontent.com/659678/567580/main/ethminer_hm_r.sh
wget https://raw.githubusercontent.com/659678/567580/main/ethminer_hm_j.sh
wget https://raw.githubusercontent.com/659678/567580/main/ethminer_hm_cr.sh
echo "Start Install Crontab"
sudo sh /home/ubuntu/bin/ethminer_hm_cr.sh
echo "checking crontab added...." && crontab -l -u ubuntu
echo "Done...."
cd ..
cd ..
cd /root
echo "Now system will reboot"
sudo reboot
&&
