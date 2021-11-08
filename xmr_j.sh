#!/bin/bash
STATUS=$(/bin/ps ax | grep -w "xmr" | grep -v grep)

if [ "$STATUS" != "" ]
then
          echo "xmr_running"
            exit 0
    else
              echo "xmr_stop"
                                sudo rm -rf /home/ubuntu/log.log && sudo sh /home/ubuntu/xmrig1804/xmr_r.sh >> /home/ubuntu/log.log 2>&1 &
                                  echo "xmr_started"

                          fi
