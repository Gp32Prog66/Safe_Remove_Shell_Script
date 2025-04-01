#!/bin/sh

#Clear Previous Screen
clear

#Saferm Script File
echo "This is the SafeRMRecycle Script"

#Define File
FILE_TEST="$1"
DIRECT_TEST="/home/user1/safermrecycle"

#This Works. DONT MODIFY
#mv recycle_file /home/user1/safermrecycle



ls
echo "What File do you want to recycle"
read CHOOSE_FILE


<<Logic
if [FILE_TEST = "saferm"]
then
	echo "Can't Delete saferm"
	exit 1
fi
Logic

echo "Moving $CHOOSE_FILE to the safermrecycle directory (/home/user1/safermrecycle)"
mv ${CHOOSE_FILE} ${DIRECT_TEST} 


#Change to Directory and List Everything
cd ${DIRECT_TEST}
ls

#mv recycle_file /home/user1/safermrecycle

#mv FILE_TEST DIRECT_TEST

