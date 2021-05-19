#!/bin/bash

#Begin!!!

status=$?

cat BkpWdRedInt.tar.* | pv -pter | gunzip -c | pv -pter | tar -t > /dev/null

[ $status -eq 0 ] && echo "Command successful $(date +%Y%m%d-%T)!!!" > CmdScs.txt || echo "Failed at $(date +%Y%m%d-%T)!!!" > CmdFld.txt

exit 0

#End!!!
