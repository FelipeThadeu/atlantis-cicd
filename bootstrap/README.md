# Bootstrap Scripts for ArgoCD

## Install ArgoCD
```bash
bash install-argocd.sh
```

## Port Forward UI to localhost:8080
```bash
bash port-forward-argocd.sh
```

## Default Credentials
```bash
USERNAME: admin
PASSWORD: Run the following:
  kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```