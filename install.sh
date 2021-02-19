#!/bin/bash

count=`awk '$0>=from&&$0<=to' from="$(date +%b" "%d" "%H:%M:%S -d -1hour)" to="$(date +%b" "%d" "%H:%M:%S)" install.log  | grep install | wc -l`
echo $count

TOTAL_INSTALL_ALLOWED=5

if [[ $count -le $TOTAL_INSTALL_ALLOWED ]]
then
  echo "Install is allowed..."
else
  echo "Too many installs. Only $TOTAL_INSTALL_ALLOWED are allowed in 1 hr"
fi

