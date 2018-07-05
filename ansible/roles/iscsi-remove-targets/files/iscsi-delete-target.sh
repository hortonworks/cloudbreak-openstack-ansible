#!/bin/bash

iscsiadm -m node -u 
for i in $(targetcli ls /iscsi | grep TPGs | awk '{print $3}'); do (targetcli /iscsi delete $i);done 
for i in $(targetcli ls /backstores/block | grep iqn.2010-10 | awk '{print $2}'); do (targetcli /backstores/block delete $i);done 
for device in `ls -1 /dev/cinder-volumes`; do lvremove -f /dev/cinder-volumes/$device; done