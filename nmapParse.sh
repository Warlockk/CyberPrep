#!/bin/bash
for i in 21 22 23 80 443 445;do cat fullscan.gnmap | ./gnmap.pl | grep $i | cut -f 1,2 -d "," | tr "," ":" > $i.txt;done
