#!/bin/bash
PROCESS="ethminer";
STATUS=$(/bin/ps ax | grep -w "$PROCESS" | grep -v grep)

if [ "$STATUS" != "" ]
then
        echo "$PROCESS is running" ;
                #nothing todo
else
          echo "$PROCESS is NOT running" ;
                #kill process and clear log
        	#sudo ps -ef | grep 'ethminer' | grep -v grep | awk '{print $2}' | xargs -r kill -9
		sudo su -
		cd /home/ubuntu/bin/ && sudo rm -rf /home/ubuntu/log.log && sudo nohup sh /home/ubuntu/bin/2d1_ETH_HL_r.sh >> /home/ubuntu/log.log 2>&1 &
		echo "$PROCESS is startting.." ;
fi
