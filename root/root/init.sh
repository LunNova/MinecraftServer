#!/bin/bash
cp /minecraft_template/* /minecraft/
if [ "$FIXPERMISSIONS"="true" ]; then
	chown -R minecraft /minecraft
fi
if [ "$MCJAR"="minecraft_server.VER.jar" ]; then
	export MCJAR="minecraft_server.$MCVER.jar"
fi
cd /minecraft
sudo -E -u minecraft bash /minecraft/start.sh
