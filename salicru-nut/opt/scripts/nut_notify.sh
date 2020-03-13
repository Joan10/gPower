#!/bin/bash

argument=$(echo "$1" | awk '{printf $1}')

case "$argument" in
ONLINE)
   cat <<EOF | mailx -v -s "Power has returned on UPS mariamayol2" -S smtp=monitor.guifi.gotes.org:10025 -S from="zempss@gups-mariamayol2" zenoss@zenoss.gotes.org
Power has returned on UPS mariamayol2. Running online.
.
EOF
;;

ONBATT)
   cat <<EOF | mailx -v -s "Power failure on UPS mariamayol2" -S smtp=monitor.guifi.gotes.org:10025 -S from="zempss@gups-mariamayol2" zenoss@zenoss.gotes.org
Power failure on UPS mariamayol2. Running on batteries.
.
EOF
;;
esac
