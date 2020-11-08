IMG_NAME	=	my_nginx
PS_NAME		=	nginx-ps
PORT1		=	80
PORT2		=	443
PORT3		=	22

all	:	build run

run	:
	docker run --name $(PS_NAME) -d -p $(PORT1):$(PORT1) -p $(PORT2):$(PORT2) -p $(PORT3):$(PORT3) $(IMG_NAME)

exec:
	docker exec -it $$(docker ps -aq -f "name=$(PS_NAME)") sh


build	:
	docker build -t $(IMG_NAME) .

rm	:
	docker rm -f $$(docker ps -f "name=$(PS_NAME)" -aq)

rmi	:
	docker rmi -f $(IMG_NAME)
