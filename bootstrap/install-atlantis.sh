#!/bin/bash
set -e

kubectl create namespace atlantis || true
helm repo add runatlantis https://runatlantis.github.io/helm-charts
helm repo update

helm upgrade --install atlantis runatlantis/atlantis \
  --namespace atlantis \
  --set atlantis.env.VCS_USER=atlantis[bot] \
  --set atlantis.env.VCS_TOKEN=<YOUR_GITHUB_TOKEN> \
  --set atlantis.env.REPO_WHITELIST='**' \
  --set atlantis.service.type=LoadBalancer

# Substitua <YOUR_GITHUB_TOKEN> por um token com permissão de leitura/escrita no repositório
# Após o deploy, configure o webhook no GitHub apontando para http://<IP>/events