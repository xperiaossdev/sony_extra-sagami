#!/system/bin/bash

LOG="/sdcard/alsa_test.log" 2>/dev/null

rm -f ${LOG} 2>/dev/null
touch ${LOG} 2>/dev/null

# exec > >(tee -a ${LOG} )
# exec 2> >(tee -a ${LOG} >&2)

function printf {
 echo -e "$1" | tee >> $LOG
 echo -e "$1"
} 

function format {
 echo -e "$1"
}





printf " ";
printf " ";
format "\e[1m\e[91m";
printf "================================================";
printf "		         Sony HiRes";
printf "";
printf "";
printf "";
printf "";
printf "================================================";
printf " ";
printf " ";
printf " ";
format "\e[0m\e[92m\e[1m";
printf "================================================";
printf "================================================";
format "\e[0m\e[96m";

if [ ! -f /sdcard/test.wav ]; then
	printf "No test.wav file found.";
	printf "Please place a wave file in your internal storage and name it test.wav";
	exit 1;
else
	aplay -v -D headset /sdcard/test.wav 2> >( tee -a "$LOG" ) ; echo $?
	printf " ";
	format "\e[0m\e[92m\e[1m";
	printf "================================================";
	printf "================================================";
	format "\e[0m\e[96m";
	format "\e[0m";
	printf " "; 

exit 0;
