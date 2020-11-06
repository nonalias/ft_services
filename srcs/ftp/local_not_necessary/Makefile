IMG_NAME	=	my_ftps
PS_NAME		=	ftps-ps
PORT		=	21
PORT2		=	50000

all	:	build run

run	:
	docker run --name $(PS_NAME) -d -p $(PORT):$(PORT) -p $(PORT2):$(PORT2) $(IMG_NAME)

exec :
	docker exec -it $$(docker ps -aq -f "name=$(PS_NAME)") sh

build	:
	docker build -t $(IMG_NAME) .

rm	:
	docker rm -f $$(docker ps -f "name=$(PS_NAME)" -aq)

rmi	:
	docker rmi -f $(IMG_NAME)
