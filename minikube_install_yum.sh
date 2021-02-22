#!/bin/bash

yum update -y
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
install minikube-linux-amd64 /usr/local/bin/minikube
yum install conntrack -y
minikube start --vm-driver=none



