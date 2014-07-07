#!/usr/bin/env python

import usb.core
import time
import sys

dev = usb.core.find(idVendor=int(sys.argv[1], 16), idProduct=int(sys.argv[2], 16))
mesg = dev.ctrl_transfer(0xc0, 51, 0, 0, 2)
# here we should check if it returned version 2
time.sleep(1)
# requesting audio
dev.ctrl_transfer(0x40, 0x3a, 1, 0, "")
# putting device in accessory mode
dev.ctrl_transfer(0x40, 53, 0, 0, "")
