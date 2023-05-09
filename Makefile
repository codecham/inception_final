all: dir
	sudo docker-compose -f ./srcs/docker-compose.yml up

dir:
	sudo mkdir -p /home/dcorenti/data/mariadb /home/dcorenti/data/wordpress
	sudo chmod 777 /home/dcorenti/data/mariadb /home/dcorenti/data/wordpress

down:
	sudo docker-compose -f ./srcs/docker-compose.yml down

re: dir
	sudo docker-compose -f srcs/docker-compose.yml up --build

clean:
	sudo docker-compose -f srcs/docker-compose.yml down
	sudo docker system prune --volumes
	sudo rm -rf /home/dcorenti/data/

.PHONY: all re down clean
