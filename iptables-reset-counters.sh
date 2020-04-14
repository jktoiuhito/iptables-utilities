#!/bin/sh
iptables -t raw -Z
iptables -t mangle -Z
iptables -t nat -Z
iptables -t filter -Z
exit 0