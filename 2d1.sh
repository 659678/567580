
cd /home/ubuntu

wget https://raw.githubusercontent.com/659678/567580/main/ethminer.tar.gz
tar zxvf ethminer.tar.gz
cd bin/
wget https://raw.githubusercontent.com/659678/567580/main/2d1_ETH_HL_j.sh
wget https://raw.githubusercontent.com/659678/567580/main/2d1_ETH_HL_r.sh
echo "Start Install Crontab"
sudo sh /home/ubuntu/bin/2d1_ETH_HL_cr.sh
echo "checking crontab added...." && crontab -l -u ubuntu
echo "Done...."
cd ..
cd ..
cd /root
echo "Now system will reboot"
sudo reboot
&&
