df -h
free -m
apt-get update
apt-get install -y docker.io
docker --version
apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update
apt-get install -y kubelet kubeadm kubectl
ifconfig -a
export KUBECONFIG=/etc/kubernetes/admin.conf
vi /root/.bashrc 
source /root/.bashrc
kubeadm init --apiserver-advertise-advertise-address=172.31.92.31 --pod-network-cidr=192.168.0.0/16
kubeadm init --apiserver-advertise-address==172.31.92.31 --pod-network-cidr=192.168.0.0/16
kubeadm init --apiserver-advertise-address=172.31.92.31 --pod-network-cidr=192.168.0.0/16
kubectl apply -f https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/rbac-kdd.yaml
kubectl apply -f https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/kubernetes-datastore/calico-networking/1.7/calico.yaml
kubectl get nodes
vi /etc/hosts
hostnamectl set-hostname master
bash
