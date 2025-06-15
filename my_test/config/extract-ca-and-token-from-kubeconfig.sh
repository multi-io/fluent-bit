#!/bin/sh
# the fluentbit config wants the k8s client config in separate ca and token files instead of a single kubeconfig file

KC="$1"

cat "$KC"  | yq '.clusters[0].cluster."certificate-authority-data"' -r | base64 -d >ca.crt
cat "$KC"  | yq '.users[0].user.token' -r >token
