#!/bin/sh
clear
echo "PREROUTING"
echo "\nraw"
iptables -t raw -L PREROUTING -n -v
echo "\nmangle"
iptables -t mangle -L PREROUTING -n -v
echo "\nnat"
iptables -t nat -L PREROUTING -n -v
#
echo "\n\nINPUT"
echo "\nmangle"
iptables -t mangle -L INPUT -n -v
echo "\nfilter"
iptables -t filter -L INPUT -n -v
#
echo "\n\nFORWARD"
echo "\nmangle"
iptables -t filter -L FORWARD -n -v
echo "\nfilter"
iptables -t filter -L FORWARD -n -v
#
echo "\n\nOUTPUT"
echo "\nraw"
iptables -t nat -L OUTPUT -n -v
echo "\nmangle"
iptables -t nat -L OUTPUT -n -v
echo "\nnat"
iptables -t nat -L OUTPUT -n -v
echo "\nfilter"
iptables -t nat -L OUTPUT -n -v
#
echo "\n\nPOSTROUTING"
echo "\nmangle"
iptables -t nat -L POSTROUTING -n -v
echo "\nnat"
iptables -t nat -L POSTROUTING -n -v