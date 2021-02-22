#!/bin/bash
PublicIP=`ifconfig | grep  "netmask 255.255.255.0" | grep inet | awk -F'[: ]+' '{ print $3 }'`
Hostname=`hostname`
echo "<html><body bgcolor=black><center><h1><p><font color=yellow>Web Server: $Hostname </h1></center></body><html>   <html><body bgcolor=black><center><h1><p><font color=red>Web Server IP: $PublicIP </h1></center></body><html>" > index.html
