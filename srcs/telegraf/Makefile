IMG_NAME	=	my_telegraf
PS_NAME		=	telegraf_ps
PORT		=	9999

all	:	build run

run	:
	docker run -v /var/run/docker.sock:/var/run/docker.sock --name $(PS_NAME) -d -p $(PORT):$(PORT) $(IMG_NAME) 
runit:
	docker run --name $(PS_NAME) -it -p $(PORT):$(PORT) $(IMG_NAME)

exec :
	docker exec -it $$(docker ps -aq -f "name=$(PS_NAME)") sh

build	:
	docker build -t $(IMG_NAME) .

rm	:
	docker rm -f $$(docker ps -f "name=$(PS_NAME)" -aq)

rmi	:
	docker rmi -f $(IMG_NAME)

log	:
	docker logs $(PS_NAME)
