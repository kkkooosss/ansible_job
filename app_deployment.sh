#!/bin/bash

gitclone
cd /
./script_web
kubectl apply -f app-deployment.yaml

