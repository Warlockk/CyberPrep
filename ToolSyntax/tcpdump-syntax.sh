!/bin/bash
tcpdump tcp port 80 -w output.pcap -i eth0
