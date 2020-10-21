cd srcs/nginx/
kubectl delete -f *.yaml
cd ../../

cd srcs/metallb/
kubectl delete -f *.yaml
cd ../..
