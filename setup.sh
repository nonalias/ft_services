# starting minikube
minikube start --driver=virtualbox

# changing docker image location
eval $(minikube docker-env)

# Nginx operation
cd ./srcs/nginx/
docker build -t nginx-image .
kubectl apply -f *.yaml
cd ../..
