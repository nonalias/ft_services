eval $(minikube docker-env)

# remove images
#docker rmi -f ftps-image
#docker rmi -f mysql-image
#docker rmi -f wordpress-image
#docker rmi -f phpmyadmin-image
#docker rmi -f nginx-image
#docker rmi -f influxdb-image

cd srcs/nginx/
kubectl delete -f *.yaml
cd ../../

cd srcs/metallb/
kubectl delete -f *.yaml
cd ../..

cd srcs/ftp/
kubectl delete -f *.yaml
cd ../..

cd srcs/mysql/
kubectl delete -f deployment.yaml
kubectl delete -f pv.yaml
#kubectl delete configmap/nginx-conf
cd ../..

cd srcs/phpmyadmin/
kubectl delete -f phpmyadmin.yaml
cd ../..

cd srcs/wordpress/
kubectl delete -f wordpress.yaml
cd ../..

cd srcs/influxdb/
kubectl delete -f influxdb.yaml
kubectl delete -f pv.yaml
cd ../..
