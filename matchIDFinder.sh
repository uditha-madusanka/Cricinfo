#!/bin/bash

# This srcipt will show the ESPN match ID of selected county 
# and selected match which can be used to view live score 
# using scoreboard.sh script

if [ $# -lt 1 ]; then
  echo -e "!!Missing ICC country name\nUsage: $0 <Country Name>\nExample: $0 Australia"
  exit 0;
fi

echo "Match Titles"
echo "-----------"
curl -s "http://static.cricinfo.com/rss/livescores.xml"|  grep -i "$1 $2" -A2 | grep "<title>" |awk -v FS="(>|<)" '{print $3}' 
echo "Corresponding Match IDs"
echo "-----------------------"
curl -s "http://static.cricinfo.com/rss/livescores.xml"|  grep -i "$1 $2" -A2 | grep "<link>" | awk -v FS="(/|.html)" '{print $7}'
