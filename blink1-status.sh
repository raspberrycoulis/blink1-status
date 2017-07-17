#!/bin/bash

test=$(/bin/systemctl is-active pimote-webserver.service)

if [ "$test" == "active" ]; then
    #echo -e "active"
    /home/pi/blink1/commandline/blink1-tool --green --glimmer=10 -q
elif [ "$test" == "inactive" ]; then
    #echo -e "inactive"
    /home/pi/blink1/commandline/blink1-tool --red --running=10 -q
else
    #echo -e "unknown"
    /home/pi/blink1/commandline/blink1-tool --yellow -q
fi
