# iptables-utilities

Scripts to make life with iptables a bit easier.

## Requirements
iptables (lowest working version unknown)

## Included scripts

### iptables-print.sh

This script prints out all `iptables` rules.
Handy for monitoring the amount of traffic each rule is dropping/accepting/rejecting etc.
Rules are printed out with the flags `-v -n --line-numbers` from the tables `raw`, `mangle`, `filter` and `nat`, in that order.

### iptables-reset-counters.sh

This script resets traffic counters on all the tables at once.