#!/bin/bash
set -e

# Instale o Velero CLI: https://velero.io/docs/v1.12/basic-install/

helm repo add vmware-tanzu https://vmware-tanzu.github.io/helm-charts
helm repo update

kubectl create namespace velero || true

helm upgrade --install velero vmware-tanzu/velero \
  --namespace velero \
  --values backups/velero-values.yaml