#!/bin/bash
<<<<<<< HEAD
#if (sys.arg != 2) echo "Usage = ./FullMap.sh <target IP or range> <your ip>" sys.arg(0);
nmap -T4 -A -Pn -oA fullscan -vv $1 -p- --exclude $2
for i in 21 22 23 80 443 445;do cat fullscan.gnmap | ./gnmap.pl | grep $i | cut -f 1,2 -d "," | tr "," ":" > $i.txt;done
=======
nmap -T4 -A -Pn -oA $3 -vv $1 -p- --exclude $2
for i in 21 22 23 80 443 445;do cat $3.gnmap | ./gnmap.pl | grep $i | cut -f 1,2 -d "," | tr "," ":" > $i.txt;done
>>>>>>> 031ab68bdc9b55145970350e3e5384c83b52ccdd

