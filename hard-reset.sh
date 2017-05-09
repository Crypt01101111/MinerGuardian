#!/bin/bash

clear
echo "Hard Reset Start"
sleep 0.5

clear
echo "Hard Reset Start ."
sleep 0.5

clear
echo "Hard Reset Start .."
sleep 0.5

clear
echo "Hard Reset Start ..."
sleep 0.5


clear
gpio -g write 2 1
gpio -g write 3 1
echo "AntMiner S5 (Maschine one) Shutdown"
sleep 2

gpio -g write 4 1
gpio -g write 17 1
echo "AntMiner S7 (Maschine two) Shutdown"
sleep 2

gpio -g write 27 16
gpio -g write 22 1
echo "AntMiner S7 (Maschine three) Shutdown"
sleep 2

clear
echo "Wait 30 seconds"
sleep 5
clear

clear
echo "25 seconds left"
sleep 5

clear
echo "20 seconds left"
sleep 5

clear
echo "15 seconds left"
sleep 5

clear
echo "10 seconds left"
sleep 5

clear
echo "5 seconds left"
sleep 5

clear
gpio -g write 2 0
gpio -g write 3 0
echo "AntMiner S5 (Maschine one) power up"
sleep 0.5
echo "10 seconds Delay"
sleep 10

gpio -g write 4 0
gpio -g write 17 0
echo "AntMiner S7 (Maschine two) power up"
sleep 0.5
echo "10 seconds Delay"
sleep 10

gpio -g write 27 0
gpio -g write 22 0
echo "AntMiner S7 (Maschine three) power up"
sleep 0.5
echo "10 seconds Delay"
sleep 10

clear
echo "Waiting 15 seconds"
sleep 5

clear
echo "10 seconds left"
sleep 5

clear
echo "5 seconds left"
sleep 5

clear
echo "Check Miner status"
sleep 0.1

miner1a="$( sudo gpio -g read 2 )"
miner1b="$( sudo gpio -g read 3 )"
miner2a="$( sudo gpio -g read 4 )"
miner2b="$( sudo gpio -g read 17 )"
miner3a="$( sudo gpio -g read 27 )"
miner3b="$( sudo gpio -g read 22 )"

		
if [ "$miner1a" = "0" ] && [ "$miner1b" = "0" ]
	then
		echo "AntMiner S5 (Maschine one) its UP"
	else 
		echo "AntMiner S5 (Maschine one) its DOWN"
		
		echo "Restart Script in 15 seconds"
		sleep 5
		clear
		
		echo "Restart Script in 10 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 9 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 8 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 7 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 6 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 5 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 4 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 3 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 2 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 1 seconds"
		sleep 1
		clear
		
		echo "Restart Script"
		
		./$(basename $0) && exit
fi

sleep 1

if [ "$miner2a" = "0" ] && [ "$miner2b" = "0" ]
	then
		echo "AntMiner S7 (Maschine two) its UP"
	else 
		echo "AntMiner S7 (Maschine two) its DOWN"

		echo "Restart Script in 15 seconds"
		sleep 5
		clear
		
		echo "Restart Script in 10 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 9 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 8 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 7 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 6 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 5 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 4 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 3 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 2 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 1 seconds"
		sleep 1
		clear
		
		echo "Restart Script"
		
		./$(basename $0) && exit
fi

sleep 1

if [ "$miner3a" = "0" ] && [ "$miner3b" = "0" ]
	then
		echo "AntMiner S7 (Maschine three) its UP"
	else 
		echo "AntMiner S7 (Maschine three) its DOWN"
		
		echo "Restart Script in 15 seconds"
		sleep 5
		clear
		
		echo "Restart Script in 10 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 9 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 8 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 7 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 6 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 5 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 4 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 3 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 2 seconds"
		sleep 1
		clear
		
		echo "Restart Script in 1 seconds"
		sleep 1
		clear
		
		echo "Restart Script"
		
		./$(basename $0) && exit
fi
sleep 1.5
echo "Good news the script could not detect any errors"
