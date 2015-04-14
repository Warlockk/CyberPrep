#!/bin/bash
sudo nmap -sSV -p- $1 -vv -oA $3 --reason --exclude $2
for i in 21 22 23 80 443 445;do cat $3.gnmap | ./gnmap.pl | grep $i | cut -f 1,2 -d "," | tr "," ":" > $i.txt;done
