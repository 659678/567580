#!/bin/bash
STATUS=$(/bin/ps ax | grep -w "t-rex" | grep -v grep)

if [ "$STATUS" != "" ]
then
          echo "t-rex_running"
            exit 0
    else
              echo "t-rex_stop"
                                sudo rm -rf /home/ubuntu/TREX/log.log && sudo nohup sh /home/ubuntu/TREX/5a_tr_hm_1_r.sh >> /home/ubuntu/TREX/log.log 2>&1 &
                                  echo "t-rex_started"

                          fi
