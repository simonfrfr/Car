#!/bin/bash

/etc/Car/android-usb-audio.py $1 $2
pactl load-module module-loopback source=`pactl list sources short | grep alsa_input.usb | cut -f 1`
