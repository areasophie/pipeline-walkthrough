#!/bin/bash

## Alpha

kubectl apply -f stages/test-alpha/namespace.yaml
kubectl apply -f stages/test-alpha/application.yaml

## Gamma

kubectl apply -f stages/test-gamma/namespace.yaml
kubectl apply -f stages/test-gamma/application.yaml

