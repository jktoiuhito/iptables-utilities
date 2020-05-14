#!/bin/sh
clear
echo
echo "------------------------------ iptables-print.sh ------------------------------"
echo "                        `date`"
echo
echo "                      ----------- raw ------------"
echo
iptables -t raw -L -n -v --line-numbers
echo
echo "                      ---------- mangle ----------"
echo
iptables -t mangle -L -n -v --line-numbers
echo
echo "                      ---------- filter ----------"
echo
iptables -t filter -L -n -v --line-numbers
echo
echo "                      ----------- nat ------------"
echo
iptables -t nat -L -n -v --line-numbers
exit 0