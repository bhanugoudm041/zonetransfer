#!/bin/bash


echo "                            __                                 _____             "
echo "____________   ____   _____/  |_____________    ____   _______/ ____\___________ "
echo "\___   /  _ \ /    \_/ __ \   __\_  __ \__  \  /    \ /  ___/\   __\/ __ \_  __ \ "
echo " /    (  <_> )   |  \  ___/|  |  |  | \// __ \|   |  \\___ \  |  | \  ___/|  | \/"
echo "/_____ \____/|___|  /\___  >__|  |__|  (____  /___|  /____  > |__|  \___  >__|   "
echo "      \/          \/     \/                 \/     \/     \/            \/       "
echo "**************************Design and developed by bhanugoud**********************"
echo "******************please use it for educational purpose only*********************"
echo "##########################USAGE: ./zonetransfer.sh domain ##########################"
host -t NS $1 |cut -d " " -f 4 >> temp.txt
while read ns
	do 
	  host -t axfr $1 $ns 
        done < temp.txt
rm -rf temp.txt
sleep 2
echo 'good bye....!!!'
