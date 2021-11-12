#!/bin/bash
PROCESS="xmrig";

if ps ax | grep -v grep | grep $PROCESS > /dev/null
then
        echo "$PROCESS is running" ;
                #nothing todo
else
          echo "$PROCESS is NOT running" ;
                #kill process and clear log
                sudo su -
		ps -ef | grep 'xmrig' | grep -v grep | awk '{print $2}' | xargs -r kill -9
		cd /home/ubuntu/xmrig1804/ && rm -rf /home/ubuntu/xmrig1804/log.log && sudo sh /home/ubuntu/xmrig1804/xmr_r.sh
                    echo "$PROCESS is startting.." ;
fi
