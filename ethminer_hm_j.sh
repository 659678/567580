#!/bin/bash

PROCESS="ethminer";

if ps ax | grep -v grep | grep $PROCESS > /dev/null
then
        echo "$PROCESS is running" ;
		
else
        echo "$PROCESS is NOT running" ;		
		ps -ef | grep 'etherminer' | grep -v grep | awk '{print $2}' | xargs -r kill -9
		sudo su -
		sudo rm -rf /home/ubuntu/log.log && sudo nohup sh /home/ubuntu/bin/ethminer_hm_r.sh >> /home/ubuntu/log.log 2>&1 &
		echo "$PROCESS is startting.." ;
fi
