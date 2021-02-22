#!/bin/bash

git clone https://github.com/kkkooosss/ansible_job.git
cd ansible_job/
./script_web.sh
kubectl apply -f app_deployment.yaml
sleep 10
PodName=`kubectl get pod | grep nginx-deploy* |awk -F'[: ]+' '{ print $1 }'`
kubectl cp index.html $PodName:/usr/share/nginx/html 
kubectl expose deployment nginx-deploy --type=NodePort --port=80
