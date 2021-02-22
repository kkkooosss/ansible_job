#!/bin/bash

# sudo yum update -y
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
sudo yum install conntrack -y
sleep 10
minikube start --vm-driver=none



