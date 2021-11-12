-----Kurbenetes : What is kurbenetes ?
=================================
Kurbenetes is a software that can deploy with many applications but with 1 config. Here's how simple the system is now monoservices, not monolith anymore where each installed / configured package is individual but still connected to other packages or applications. Simply put, when we create a server, we definitely need the name web-service and database. Now this is a type of monoservices which each works and is configured individually but still connected to each other.

For example, if we want to create several of the same services and several servers, it would be complicated if it was set manually. Now this is where kurbenetes plays an important role, where he configures several packages with one configuration file.

How to Install Kurbenetes 
=========================
Okay, actually for kurbenetes, you can choose to use anything, you can use docker desktop or minikube from github and kubectl. Well, because I use it in vm, I use the minikube and kubectl, just like this:

Okay before that make sure it should be like this to install on the VM:
- RAM 2GB Min
- Processor 2
- Use User Don't Root

Example Create Users :
```console
adduser kurbenetes
usermod -aG sudo kurbenetes
su kurbenetes
sudo groupadd docker -> If it doesn't exist, but if you have installed docker it will definitely be there
sudo usermod -aG docker kurbenetes
```

His Installation :

```console
wget https://github.com/kubernetes/minikube/releases/download/v1.24.0/minikube-linux-amd64
mv minikube-linux-amd64 minikube
chmod +x minikube
mv minikube /usr/local/bin/minikube
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
mv kubectl /user/local/bin/kubectl
```

Run `minikube start`
```console
kurbenetes@alpacentauri:~$ minikube start
* minikube v1.24.0 on Debian 10.2
* Using the docker driver based on existing profile

X The requested memory allocation of 1970MiB does not leave room for system overhead (total system memory: 1970MiB). You may face stability issues.
* Suggestion: Start minikube with less memory allocated: 'minikube start --memory=1970mb'

* Starting control plane node minikube in cluster minikube
* Pulling base image ...
* Updating the running docker "minikube" container ...
! This container is having trouble accessing https://k8s.gcr.io
* To pull new external images, you may need to configure a proxy: https://minikube.sigs.k8s.io/docs/reference/networking/proxy/
* Preparing Kubernetes v1.22.3 on Docker 20.10.8 ...
* Verifying Kubernetes components...
  - Using image gcr.io/k8s-minikube/storage-provisioner:v5
* Enabled addons: storage-provisioner, default-storageclass
* Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
```

Run `kubectl version`
```console
kurbenetes@alpacentauri:~$ kubectl version
Client Version: version.Info{Major:"1", Minor:"22", GitVersion:"v1.22.3", GitCommit:"c92036820499fedefec0f847e2054d824aea6cd1", GitTreeState:"clean", BuildDate:"2021-10-27T18:41:28Z", GoVersion:"go1.16.9", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"22", GitVersion:"v1.22.3", GitCommit:"c92036820499fedefec0f847e2054d824aea6cd1", GitTreeState:"clean", BuildDate:"2021-10-27T18:35:25Z", GoVersion:"go1.16.9", Compiler:"gc", Platform:"linux/amd64"}
```
