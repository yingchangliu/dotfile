#!/usr/bin/env bash
swaybg_instances=$(ps axh | grep swaybg | grep -v grep | awk '{print $1}')
wallpath=~/dotfile/config/background/
if [[ -f /tmp/currentwall ]];then
    image=$( find ${wallpath} -type f | grep -v $(cat /tmp/currentwall) | shuf | head -n 1)
else
    image=$(find ${wallpath} -type f | shuf | head -n 1)
fi
#if [[ -f /tmp/currentwall ]];then
#	image=$( find /usr/share/backgrounds/ -type f | grep -v $(cat /tmp/currentwall) | shuf | head -n 1)
#else
#	image=$(find /usr/share/backgrounds/ -type f | shuf | head -n 1)
#fi
echo $image
echo $image > /tmp/currentwall
#setsid -f swaybg -i $image
swaybg -i $image
sleep 1 # for a smooth transition with no flicker
for instance in $swaybg_instances; do
	kill -9 $instance 1>/dev/null 2>&1
done

