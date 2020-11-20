# volume over predict
export MINIKUBE_HOME=~/goinfre
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



# ftps operation
cd ./srcs/ftp/
docker build -t ftps-image . > /dev/null
kubectl apply -f *.yaml
cd ../..

# MySQL operation
cd ./srcs/mysql/
docker build -t mysql-image . > /dev/null
kubectl apply -f deployment.yaml
kubectl apply -f pv.yaml
cd ../..

# wordpress
cd ./srcs/wordpress
docker build -t wordpress-image . > /dev/null
kubectl apply -f wordpress.yaml
cd ../..

# phpMyAdmin operation
cd ./srcs/phpmyadmin/
docker build -t phpmyadmin-image .  > /dev/null
kubectl apply -f phpmyadmin.yaml
cd ../..


# Nginx operation
cd ./srcs/nginx/
#kubectl get svc | grep wordpress-service | awk '{print $4}' > wp-ip
#sed -i.bak "s/wp-service/$(cat wp-ip)/g" ./default.conf
docker build -t nginx-image . > /dev/null
#kubectl create configmap nginx-conf --from-file=./default.conf --from-file=./proxy.conf
kubectl apply -f *.yaml
#rm default.conf
#mv default.conf.bak default.conf
cd ../..

# influxdb operation
cd ./srcs/influxdb/
docker build -t influxdb-image . > /dev/null
kubectl apply -f influxdb.yaml
kubectl apply -f pv.yaml
cd ../..

# telegraf operation
cd ./srcs/telegraf/
docker build -t telegraf-image .
kubectl apply -f telegraf.yaml
cd ../..

# grafana operation
cd ./srcs/grafana/
docker build -t grafana-image .
kubectl apply -f grafana.yaml
cd ../..


ssh-keygen -R 192.168.99.240
