all: detach

debug:
	docker-compose -f srcs/docker-compose.yml up --build
detach:
	docker-compose -f srcs/docker-compose.yml up --build -d
down:
	@docker-compose -f srcs/docker-compose.yml down -t 3
re:
	@docker-compose -f srcs/docker-compose.yml up --build

clean:
	@docker volume rm db wp

prune:
	@ docker system prune -f -a --volumes

destroy: down prune clean

	