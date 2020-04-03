#!/bin/sh
clear
echo
echo "------------------------------ iptables-print.sh ------------------------------"
echo "                        `date`"
echo
echo "                       ---------- PREROUTING ----------"
echo
echo "raw"
iptables -t raw -L PREROUTING -n -v
echo
echo "mangle"
iptables -t mangle -L PREROUTING -n -v
echo
echo "nat"
iptables -t nat -L PREROUTING -n -v
echo
echo
echo "                         ---------- INPUT ----------"
echo
echo "mangle"
iptables -t mangle -L INPUT -n -v
echo
echo "filter"
iptables -t filter -L INPUT -n -v
echo
echo
echo "                        ---------- FORWARD ----------"
echo
echo "mangle"
iptables -t mangle -L FORWARD -n -v
echo
echo "filter"
iptables -t filter -L FORWARD -n -v
echo
echo
echo "                         ---------- OUTPUT ----------"
echo
echo "raw"
iptables -t raw -L OUTPUT -n -v
echo
echo "mangle"
iptables -t mangle -L OUTPUT -n -v
echo
echo "nat"
iptables -t nat -L OUTPUT -n -v
echo
echo "filter"
iptables -t filter -L OUTPUT -n -v
echo
echo
echo "                       ---------- POSTROUTING ----------"
echo
echo "mangle"
iptables -t mangle -L POSTROUTING -n -v
echo
echo "nat"
iptables -t nat -L POSTROUTING -n -v
exit 0