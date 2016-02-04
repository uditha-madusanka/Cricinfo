# Cricinfo
Live cricket score on Linux command prompt

1. Find the match ID (ESPN Crickinfo) you want to watch the score using "MatchIDFinder.sh". 
Pass the country name of you want to view the live score of and find out the live match id

Eg: To list down all live matches payed by Australian team use following command

 $./matchIDFinder.sh Australia

2. Use "scoreboard.sh" script to display the live score of the match

Eg: 
$ ./scoreboard.sh <match id>
 
--
You can use "watch" command to view continues results
Eg: watch -n 60 scoreboard.sh <match id>
