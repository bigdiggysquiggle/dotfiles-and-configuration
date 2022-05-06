#!/bin/bash

#a simple utility script for i3blocks. It gets the
#current temperature of the cpu and returns colourized
#output in a format that i3blocks can use

#TODO: create a gradient

#ef 9f a5 for bacon instead of fire

TEMP=$(acpi -t | awk '{ printf $4 }')
DEC=$(printf "%.0f\n" $TEMP)
if [ $DEC -ge 50 ]; then
	ICO="\xef\x9d\xa9"
	COL="#FFFF00"
elif [ $DEC -ge 80 ]; then
	ICO="\xef\x81\xad"
	COL="#FF0000"
else
	ICO="\xef\x9d\xab"
	COL="#00FF00"
fi
echo -e "<span font=\"Font Awesome 6 Free\">$ICO</span>: ${TEMP}C"
echo "${TEMP}C"
echo "$COL"
