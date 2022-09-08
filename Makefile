all: detach

debug:
	docker-compose -f srcs/docker-compose.yml up --build
detach:
	docker-compose -f srcs/docker-compose.yml up --build -d
down:
	@docker-compose -f srcs/docker-compose.yml down -t 3

re: full-down
	@docker-compose -f srcs/docker-compose.yml up --build --remove-orphans

full-down:
	@docker-compose -f srcs/docker-compose.yml down -t 3 --rmi all --volumes

clean:
ifneq ($(shell docker volume ls -q), )
	@docker volume rm $(docker volume ls -q)
else
	@echo no volume
endif
ifneq ($(shell docker images -a -q), )
	@docker rmi $(docker images -a -q)
else
	@echo no images
endif

prune:
	@docker system prune -f -a --volumes

destroy: down prune clean

	