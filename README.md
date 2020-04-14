# iptables-utilities

Scripts to make life with iptables a bit easier.

## Requirements
iptables (lowest working version unknown)

## Included scripts

### iptables-print.sh

This script prints out `iptables` rules in a neat, human-readable format.
Handy for monitoring the amount of traffic each rule is dropping/accepting/rejecting etc.

Rules are printed out from the following tables and chains in order, with the flags `-v -n` (verbose, no DNS lookups):
* raw prerouting
* mangle prerouting
* nat prerouting
* mangle input
* filter input
* mangle forward
* filter forward
* raw output
* mangle output
* nat output
* filter output
* mangle postrouting
* nat postrouting.

![Exampe output of iptables-print.sh](https://github.com/jktoiuhito/iptables-print.sh/blob/master/example-output.png)

### iptables-reset-counters.sh

This script simply resets traffic counters on all the tables at once.