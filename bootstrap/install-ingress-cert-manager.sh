#!/bin/bash
set -e

# Instala o NGINX Ingress Controller via Helm
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx \
  --create-namespace \
  -f ingress/nginx-values.yaml

# Instala cert-manager via Helm
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm upgrade --install cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --set installCRDs=true \
  -f ingress/cert-manager-values.yaml

echo "✅ Ingress NGINX e Cert-Manager instalados com sucesso"