#!/bin/sh

# Source: http://kubernetes.io/docs/getting-started-guides/kubeadm/

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y docker.io kubelet=1.5.6-00 kubectl=1.5.6-00 kubernetes-cni=0.5.1-00
apt-get download kubectl=1.5.6-00
dpkg --force-all -i kubeadm_1.5.6-00_amd64.deb
