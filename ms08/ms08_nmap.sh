#!/bin/bash
# MS08-067-netapi NMAP Checker, feed it a subnet or ip and it will check all hosts for ms08
sudo nmap -oA ms08_nmap -sS  -p445 --script smb-check-vulns.nse -T4 $1 --script-args=unsafe=1 -vv --reason

