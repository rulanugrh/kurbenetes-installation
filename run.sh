wget https://github.com/kubernetes/minikube/releases/download/v1.24.0/minikube-linux-amd64
mv minikube-linux-amd64 minikube
chmod +x minikube
mv minikube /usr/local/bin/minikube
minikube start
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
mv kubectl /user/local/bin/kubectl
