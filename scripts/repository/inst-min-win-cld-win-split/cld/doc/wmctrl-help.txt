#!/bin/bash
# Description: Maximize, restore, minimize the current active window.
#	Use for keyboard shortcut.
#	Ref: https://askubuntu.com/questions/703628/how-to-close-minimize-and-maximize-a-specified-window-from-terminal
script_name=$(basename "${0}")

option=$1
case "${option}" in

	max)
		wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
		;;
	
	res|restore)
		wmctrl -r :ACTIVE:  -b remove,maximized_vert,maximized_horz
		;;
		
	min)
		wmctrl -a :ACTIVE:
		;;

	*)
		echo "Error: Unknown option=>${option}"
		echo " e.g.: ${script_name} [max,min,res]"
		exit 1
	;;

esac
