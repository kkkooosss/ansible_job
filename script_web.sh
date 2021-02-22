#!/bin/bash
PublicIP=`curl http://169.254.169.254/latest/meta-data/public-ipv4/`
Hostname=`curl http://169.254.169.254/latest/meta-data/hostname`
echo "<html><body bgcolor=black><center><h1><p><font color=yellow>Web Server: $Hostname </h1></center></body><html>   <html><body bgcolor=black><center><h1><p><font color=red>Web Server IP: $PublicIP </h1></center></body><html>" > index.html
git clone https://github.com/kkkooosss/ansible_job.git
cd ansible_job/
