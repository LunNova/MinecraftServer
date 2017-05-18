#!/bin/bash
cp /minecraft_template/* /minecraft/
if [ "$FIXPERMISSIONS"="true" ]; then
	chown -R minecraft /minecraft
fi
if [ "$MCJAR"="minecraft_server.VER.jar" ]; then
	export MCJAR="minecraft_server.$MCVER.jar"
fi
cd /minecraft
sudo -E -u minecraft bash /minecraft/start.sh &
PID=$!
trap 'kill -TERM $PID; wait $PID' TERM
trap 'kill -INT $PID; wait $PID' INT
trap 'kill -HUP $PID; wait $PID' HUP
wait $PID
wait $PID
