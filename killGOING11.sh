#!/bin/bash

# set PROCESS_NUM=$(ps -o rss= -p `pidof GOING11`)
# PROCESS_NUM="$(vmmap `pidof GOING11` | (head -n1 && grep "." | tail -1))"
PROCESS_NUM="$(vmmap `/usr/bin/pidof GOING11` | (grep "." | tail -1))"

# echo "Memory occupied: ${PROCESS_NUM}"

# echo ${PROCESS_NUM##* }
stringarray=($PROCESS_NUM)
# echo ${stringarray[1]}
memory=${stringarray[1]}
# for word in $PROCESS_NUM
# do
#     echo $word
# done
# memory="1G"

wordlist=$memory | grep -o .
bytetype="${memory: -1}"
byte=$(echo $memory | rev | cut -c4- | rev)
byte=$(echo $(($byte + 0)))

# echo $memory

if [[ "$bytetype" == "G" ]];then
	# echo "IS G"
	kill -9 $(/usr/bin/pidof GOING11)
else
	if [[ $memory =~ [0-9]{1}.[0-9]{1,3}M ]]; then
		if (( $byte > 400 )); then
			# echo "$byte is over megabyte"
			kill -9 $(/usr/bin/pidof GOING11)
		# else
			# echo "$byte not over!!"
		fi
	else
	    # echo "oops"
	    kill -9 $(/usr/bin/pidof GOING11)
	fi
fi




