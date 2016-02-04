#!/bin/bash

# This script will show cricket live score of a selected match.
# 

if [ $# -lt 1 ]; then
  echo -e "!!Missing the match ID\nUsage:\n-----\n$0 <Match ID>\nExample: $0 895594\nNOTE: You can use crick.sh to find out the Match ID"
  exit 0;
fi

URL=http://www.espncricinfo.com/ci/engine/match/$1.html?view=scorecard;wrappertype=none
# Show match summary
printf "Match Summary\n---------------------\n"
# Title
curl -s $URL| grep 'team-1\|team-2' | awk -v FS="(\">|<)" '{print $3$5}'
echo ""
# Summary
curl -s http://www.espncricinfo.com/ci/engine/match/$1.html | grep \<title\> | cut -d">" -f2 | cut -d"|" -f 1 |  sed -e "s/,/\n/g"  -e "s/(/- /g" -e "s/)//g" | sed -e "s/^ //g"

# Show full scoreboard
printf "\nFull Scoreboard\n----------------------\n"
curl -s $URL | grep -A2 'bowling-table\|batsman-name'\
			| sed -e "s/bowling-table/\n\<td batsman-name\n\<td dismissal-info\n\<td bold/" \
			| awk -F "<td" '/batsman-name/ {b=$2} /dismissal-info/ {d=$2} /bold/ {r=$2; print b"|"d"|"r}' \
			|sed -e "s/<\/a>//g" \
			| awk -v FS="(\">|</)" '{printf "%-6s%s%s\n", $7, $3, $5}'\
			| sed -e "s/^ /---------------------------/g"
