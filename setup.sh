# starting minikube
minikube start --driver=virtualbox

# changing docker image location
eval $(minikube docker-env)

# metallb operation
cd ./srcs/metallb/
kubectl apply -f metallb.yaml
cd ../..

# Nginx operation
cd ./srcs/nginx/
docker build -t nginx-image .
kubectl apply -f *.yaml
cd ../..
