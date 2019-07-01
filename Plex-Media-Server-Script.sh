#!/bin/bash
if pgrep -x "IPVanish\ VPN" > /dev/null
then 
	echo "Running"
else 
	echo "IPVanish VPN is Stopped......"
	echo "IPVanish VPN is Opening......"
	echo "Please Connect to VPN & Run Script Again......"
	open -F -a IPVanish\ VPN
	exit
fi


if pgrep -x "Plex\ Media\ Server" > /dev/null
then 
	echo "Plex Media Server is Running............."
else 
	echo "Plex Media Server is Stopped............."
	echo "Plex Media Server is Opening............."
	open -F -a Plex\ Media\ Server
fi



if ! pgrep -x "Google\ Chrome" > /dev/null
then
	echo "Stoppped"
	echo "Opening FRESH Instance of Chrome + Opening Plex Tab"
	open -F -a Google\ Chrome
	open -a Plex\ Media\ Server
	open -a Plex\ Media\ Server  

else
	echo "Running"
	echo "Opening Chrome + Plex Tab"
	open -a Plex\ Media\ Server
	exit
fi

EXIT;
