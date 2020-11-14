IMG_NAME	=	my_wordpress
PS_NAME		=	wordpress-ps
PORT1		=	5050

all	:	build run

run	:
	docker run --name $(PS_NAME) -d -p $(PORT1):$(PORT1) $(IMG_NAME)

runit	:
	docker run --name $(PS_NAME) -it -p $(PORT1):$(PORT1) $(IMG_NAME)

exec:
	docker exec -it $$(docker ps -aq -f "name=$(PS_NAME)") sh


build	:
	docker build -t $(IMG_NAME) .

rm	:
	docker rm -f $$(docker ps -f "name=$(PS_NAME)" -aq)

rmi	:
	docker rmi -f $(IMG_NAME)
