#!/bin/bash
cp /minecraft_template/* /minecraft/
ls -l /minecraft_template
ls -l /minecraft
if [ "$FIXPERMISSIONS"="true" ]; then
	chown -R minecraft /minecraft
fi
cd /minecraft
sudo -E -u minecraft bash /minecraft/start.sh
