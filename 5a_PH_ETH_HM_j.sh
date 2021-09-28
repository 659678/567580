#!/bin/bash
STATUS=$(/bin/ps ax | grep -w "PhoenixMiner" | grep -v grep)

if [ "$STATUS" != "" ]
then
          echo "PhoenixMiner_running"
            exit 0
    else
              echo "PhoenixMiner_stop"
                                sudo rm -rf /home/ubuntu/Phoenix/log.log && sudo nohup sh /home/ubuntu/Phoenix/5a_PH_ETH_HM_r.sh >> /home/ubuntu/Phoenix/log.log 2>&1 &
                                  echo "PhoenixMiner_started"

                          fi
