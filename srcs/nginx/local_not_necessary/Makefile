all	:	build run

run	:
	docker run --name nginx-ps -d -p 80:80 -p 443:443 my_nginx

build	:
	docker build -t "my_nginx" .

rm	:
	docker rm -f $$(docker ps -f "name=nginx-ps" -aq)

rmi	:
	docker rmi -f my_nginx
