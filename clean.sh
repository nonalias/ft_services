
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
cd ../..
