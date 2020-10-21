# remove all images
docker rmi -f $(docker images -q)

# remote all containers
docker rm -f $(docker ps -alq)

minikube start --driver=virtualbox

cd ./srcs/nginx/
docker build -t nginx-image .
# docker run -d -p 80:80 nginx-image nginx
# kubectl create deployment --image=nginx-image
cd ../..
