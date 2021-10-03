#!/bin/bash
STATUS=$(/bin/ps ax | grep -w "ethminer" | grep -v grep)

if [ "$STATUS" != "" ]
then
          echo "ethminer_running"
            exit 0
    else
              echo "ethminer_stop"
                                sudo rm -rf /home/ubuntu/log.log && sudo nohup sh /home/ubuntu/bin/2d1_ETH_HL_r.sh >> /home/ubuntu/log.log 2>&1 &
                                  echo "ethminer_started"

                          fi
