eval $(minikube docker-env)

# remove images
#docker rmi -f ftps-image
#docker rmi -f mysql-image
#docker rmi -f wordpress-image
#docker rmi -f phpmyadmin-image
#docker rmi -f nginx-image
#docker rmi -f influxdb-image

cd nginx/
kubectl delete -f *.yaml
cd ../

cd metallb/
kubectl delete -f *.yaml
cd ..

cd ftp/
kubectl delete -f *.yaml
cd ..

cd mysql/
kubectl delete -f deployment.yaml
kubectl delete -f pv.yaml
#kubectl delete configmap/nginx-conf
cd ..

cd phpmyadmin/
kubectl delete -f phpmyadmin.yaml
cd ..

cd wordpress/
kubectl delete -f wordpress.yaml
cd ..

cd influxdb/
kubectl delete -f influxdb.yaml
kubectl delete -f pv.yaml
cd ..

cd telegraf/
kubectl delete -f telegraf.yaml
cd ..

cd grafana/
kubectl delete -f grafana.yaml
cd ..
