# starting minikube
minikube start --driver=virtualbox

# changing docker image location
eval $(minikube docker-env)

# metallb operation
cd ./srcs/metallb/
kubectl apply -f namespace.yaml
kubectl apply -f metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f config.yaml
cd ../..

# Nginx operation
cd ./srcs/nginx/
docker build -t nginx-image .
kubectl apply -f *.yaml
cd ../..

# MySQL operation
#cd ./srcs/mysql/
#docker build -t mysql-image .
#kubectl apply -f *.yaml
#cd ../..
