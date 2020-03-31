#!/bin/sh
clear
echo "PREROUTING"
echo
echo "raw"
echo
iptables -t raw -L PREROUTING -n -v
echo
echo "mangle"
echo
iptables -t mangle -L PREROUTING -n -v
echo
echo "nat"
echo
iptables -t nat -L PREROUTING -n -v
echo
echo
echo "INPUT"
echo
echo "mangle"
echo
iptables -t mangle -L INPUT -n -v
echo
echo "filter"
echo
iptables -t filter -L INPUT -n -v
echo
echo
echo "FORWARD"
echo
echo "mangle"
echo
iptables -t filter -L FORWARD -n -v
echo
echo "filter"
iptables -t filter -L FORWARD -n -v
echo
echo
echo "OUTPUT"
echo
echo "raw"
echo
iptables -t nat -L OUTPUT -n -v
echo
echo "mangle"
echo
iptables -t nat -L OUTPUT -n -v
echo
echo "nat"
echo
iptables -t nat -L OUTPUT -n -v
echo
echo "filter"
echo
iptables -t nat -L OUTPUT -n -v
echo
echo
echo "POSTROUTING"
echo
echo "mangle"
echo
iptables -t nat -L POSTROUTING -n -v
echo
echo "nat"
echo
iptables -t nat -L POSTROUTING -n -v