#!/bin/bash
set -e



NAMESPACE="app-production"
DEPLOYMENT="frontend"

for pod in $(kubectl get pods -n $NAMESPACE | grep $DEPLOYMENT  | awk '{print $1}'); do 
    kubectl delete pod $pod -n $NAMESPACE; 
done
