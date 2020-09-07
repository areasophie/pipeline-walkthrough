#!/bin/bash

## Alpha

kubectl apply -f stages/test-alpha/namespace.yaml
kubectl apply -f stages/test-alpha/application.yaml

## Gamma

kubectl apply -f stages/test-gamma/namespace.yaml

helm upgrade -i flagger-loadtester flagger/loadtester --namespace=pipeline-gamma --set appmesh.enabled=true --set "appmesh.backends[0]=sample-app" --set "appmesh.backends[1]=sample-app-canary"

kubectl apply -f stages/test-gamma/application.yaml

