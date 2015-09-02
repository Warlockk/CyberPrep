#!/bin/bash
# Live Host Discovery
# Discover Live Hosts Based upon a list of subnets, finds each host that responds to ping for reporting purposes
# Usage Instructions for script
echo "[*] Discovering Live Hosts on Network based upon open ports"
if [ -z "$1" ]; then
 echo "[*] Usage : $0 <targets file> "
 exit 0
fi

COUNTER=1 # Sets counter
# Iterates hosts in a file and pipes out the live hosts based upon
for host in $(cat $1);
do
    COUNTER=$[$COUNTER +1]
    echo $host >> output.txt
    echo " "
    echo "Hosts that Respond to Ping" >> output.txt
    echo " "
    sudo nmap -T4 -v -sn -n $host | grep Up | grep "Up" |awk '{print $2}' | sort -u » output.txt
    echo "Number of Hosts that are Live on Subnet $host"
    echo " "
    sudo nmap -T4 -v —min-parallelism 64 -sS -sU -Pn $host -oG 0$COUNTER_nmap.gnmap #remove the -v if you don't want to see output in terminal or alternatively increase the -vvv to give greater verbosity
    echo "Number of Hosts Live on subnet $host" >> output.txt
    cat 0$COUNTER_nmap.gnmap | grep open | cut -d " " -f 2 | wc -l » output.txt
    echo "Live Hosts on $host" >> output.txt
    cat 0$COUNTER_nmap.gnmap | grep open | cut -d " " -f 2 » output.txt
    echo " "
done
