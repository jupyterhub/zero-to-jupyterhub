#!/bin/bash

# SCRIPT SUMMARY
# --------------
# 1. Start and await minikube
# 2. Initialize Helm

# NOTE: The script should be executed from the repo directory

# Setup Kubernetes
# ----------------
echo "starting minikube"
minikube config set kubernetes-version v${KUBE_VERSION}
minikube config set vm-driver none
minikube config set WantReportErrorPrompt false
minikube config set WantKubectlDownloadMsg false
minikube config set ShowBootstrapperDeprecationNotification false
export CHANGE_MINIKUBE_NONE_USER=true
if [[ ${KUBE_VERSION} == 1.8* ]] || [[ ${KUBE_VERSION} == 1.9* ]] || [[ ${KUBE_VERSION} == 1.10.0* ]]; then
  # WARNING: localkube not supported beyond Kubernetes 1.10.0
  sudo -E $(which minikube) start --bootstrapper=localkube --extra-config=apiserver.Authorization.Mode=RBAC
else
  # WARNING: kubeadm requires systemd. systemd isn't available for Ubuntu 14.04
  # (trusty) VMs as used by Travis and CircleCI. It is available on Ubuntu 16.04
  # (xenial) or 18.04 (bionic) VMs though.
  sudo -E $(which minikube) start --bootstrapper=kubeadm
fi
minikube update-context

echo "kubectl convenience details"
kubectl config set-context $(kubectl config current-context) --namespace jh
source <(kubectl completion bash)

echo "waiting for kubernetes"
JSONPATH='{range .items[*]}{@.metadata.name}:{range @.status.conditions[*]}{@.type}={@.status};{end}{end}'
until kubectl get nodes -o jsonpath="$JSONPATH" 2>&1 | grep -q "Ready=True"; do
  sleep 1
done
kubectl get nodes

echo "initialize helm"
kubectl create serviceaccount tiller --namespace kube-system
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller

echo "waiting for tiller"
kubectl --namespace=kube-system rollout status --watch=true deployment/tiller-deploy
