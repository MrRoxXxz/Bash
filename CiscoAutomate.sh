#!/bin/bash

# Connect to the Cisco switch using Putty and the serial cable
putty -serial COM3 -sercfg 115200

# Send commands to the Cisco switch
send "enable"
expect "Password:"
send "mypassword\r"
send "conf t\r"
send "interface fastEthernet 0/1\r"
send "description This is a test interface\r"
send "exit\r"
send "wr mem\r"

# Disconnect from the Cisco switch
exit
