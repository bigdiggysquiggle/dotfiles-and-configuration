#!/usr/bin/env python3

#a simple, short little script for my i3blocks setup

#TODO: create a gradient

import psutil
PER=psutil.cpu_percent(interval=2)
OUT="CPU:" + str(str(PER) + "%").center(7)
print(OUT)
print(OUT)
if PER >= 50:
    print("#FFFF00")
elif PER >= 80:
    print("#FF0000")
