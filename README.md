# Cricinfo
Live cricket score on Linux command prompt

1. Find the match ID (ESPN Crickinfo) you want to watch the score using "MatchIDFinder.sh". Pass the 

Eg: To list down all live matches payed by Australian team use following command

 ./matchIDFinder.sh Australia
Match Titles
--
New South Wales 402/10  v Western Australia 194/4 *
South Australia 252/5 * v Queensland 474/6 
Corresponding Match IDs
--
895945
895947
2. Use "scoreboard.sh" script to display the live score of the math
Eg: If you want to watch the live score of the match between South Australia v Queensland
$ ./scoreboard.sh 895947
Match Summary
--
Queensland 474/6d
South Australia 

SOA 252/5 - 72.0 ovn JS Lehmann 92 n TP Ludeman 26  JR Hopes 1/42 - Stumps 
Full Scoreboard
--
146   MT Renshaw  c Ludeman b Mennie  
35    JA Burns   b Andrews  
35    CR Hemphrey  c Ludeman b Mennie  
29    CA Lynn  c Cosgrove b Sayers  
75    SD Heazlett  c Cosgrove b Andrews  
100   JD Wildermuth  not out  
21    CD Hartleyd
--
0     TLW Cooper  c Burns b Hopes  
33    MJ Cosgrove  lbw b Swepson  
--
You can use "watch" command to view continues results
Eg: watch -n 60 scoreboard.sh 895947
