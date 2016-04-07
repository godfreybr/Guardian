#!/bin/sh
# Title: Guardian Agent (MacOS)
# Author: Brennan Godfrey
# Description: A basic MacOS agent for the Guardian inventory system.

# Read PLIST Config
psk=(defaults read net.lcars-systems.guardianagent "PreShared Key")
url=(defaults read net.lcars-systems.guardianagent "URL Endpoint")


# Gather client data

## Machine Serial
mySerial=(ioreg -c IOPlatformExpertDevice -d 2 | awk -F\" '/IOPlatformSerialNumber/{print $(NF-1)}')

curl -XPOST -d 'serial=${mySerial}&psk=${psk}' ${url}