#!/bin/bash

declare -i TOTAL=$1
declare -i ORIGINALINTERVAL=$2
declare -i INTERVAL=$ORIGINALINTERVAL


echo $TOTAL minutes $(date +%d/%m/%Y.%H:%M) >> log.txt

echo $INTERVAL
play(){
	mpv ~/Documents/Sounds/tinsha.wav
}

play
while(($TOTAL > 0)); do
echo $TOTAL minutes to go
sleep 60
((TOTAL=$TOTAL-1))
((INTERVAL=$INTERVAL-1))
if(($INTERVAL ==0))
then
play
INTERVAL=$ORIGINALINTERVAL
fi
done
mpv ~/Documents/Sounds/gong-burmese.wav
echo finished
	

