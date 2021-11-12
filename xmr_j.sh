#!/bin/bash
PROCESS="xmrig";

if ps ax | grep -v grep | grep $PROCESS > /dev/null
then
        echo "$PROCESS is running" ;
		#nothing todo
else
          echo "$PROCESS is NOT running" ;		
		#kill process and clear log
		ps -ef | grep 'xmr' | grep -v grep | awk '{print $2}' | xargs -r kill -9
                    #Start again process
                    sudo rm -rf /home/ubuntu/log.log && sudo sh /home/ubuntu/xmrig1804/xmr_r.sh >> /home/ubuntu/log.log 2>&1 &
                    echo "$PROCESS is startting.." ;
fi
