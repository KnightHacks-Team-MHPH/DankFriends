#!/bin/bash
for i in `seq 0 140`; do
    hex=$(printf "%x\n" $i)
    echo "Friending $hex"
    curl -H "Content-Type: application/json" -d '{"userid": "307", "metid": "'"$hex"'"}' knighthacks.org/api/icebreaker/addentry
    echo
done
