#!/bin/bash
set -e

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

kubectl rollout status deployment metrics-server -n kube-system

echo "✅ Metrics Server instalado com sucesso"
