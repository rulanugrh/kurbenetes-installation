echo "Author : Kiyotaka | Kyxzy"
sudo apt install curl wget -y
sudo wget https://github.com/kubernetes/minikube/releases/download/v1.24.0/minikube-linux-amd64
sudo mv minikube-linux-amd64 minikube
sudo chmod +x minikube
sudo mv minikube /usr/local/bin/minikube
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl
