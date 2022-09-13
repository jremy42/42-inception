all: detach

debug:
	COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose -f srcs/docker-compose.yml up
detach:
	COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose -f srcs/docker-compose.yml up -d
down:
	@COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose -f srcs/docker-compose.yml down -t 3

re: full-down
	@COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose -f srcs/docker-compose.yml up --build --remove-orphans

full-down:
	@COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose -f srcs/docker-compose.yml down -t 3 --rmi all --volumes

clean:
ifneq ($(shell docker volume ls -q), )
	@docker volume rm $(shell docker volume ls -q)
else
	@echo no volume
endif
ifneq ($(shell docker images -a -q), )
	@docker rmi $(shell docker images -a -q)
else
	@echo no images
endif

prune:
	@docker system prune -f -a --volumes

destroy: down prune clean

	