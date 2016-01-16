#!/bin/bash
if [ "$#" -lt "1" ]
then
    echo "You need to include your ID as arg 1"
    exit
fi
for i in `seq 999 `; do
    meetId=$(printf "%x\n" $i)
    userId=$((0x$1))
    echo "$userId Friending $meetId"
    curl -H "Content-Type: application/json" -d '{"userid": "'"$userId"'", "metid": "'"$meetId"'"}' knighthacks.org/api/icebreaker/addentry
    echo
done
