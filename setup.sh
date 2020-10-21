# remove all images
docker rmi -f $(docker images -q)

# remote all containers
docker rm -f $(docker ps -alq)

# starting minikube
minikube start --driver=virtualbox

# Nginx operation
cd ./srcs/nginx/
docker build -t nginx-image .
# docker run -d -p 80:80 -p 443:443 nginx-image nginx
# kubectl create deployment --image=nginx-image
cd ../..


