#!/bin/bash

status=$?

rsync -rv --ignore-existing -e 'ssh -p 52939' -P /media/vn11/MPoint0/vascon/Desktop/BkpWdRedInt.tar.gz* vnbvr@62.171.180.212:/home/vnbvr/MainBkp/WDread/

#echo "Test Message on 20200924, maybe at $(date +%Y%m%d-%T)!!!"

status=$?

[ $status -eq 0 ] && echo "Command finished at $(date +%Y%m%d-%T)!!!" || echo "Failed at $(date +%Y%m%d-%T)!!!"

#rsncscpta

#rsncscptb
