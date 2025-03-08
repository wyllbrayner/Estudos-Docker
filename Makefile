all: up

up:
	@docker compose up -d

down:
	@docker compose down

exec: up
	@docker exec -it meu_container bash

clean: down

fclean: clean
	docker image rm linux_dev:4.2.0
	rm -rf test_dir_local

list:
	@docker container ls -a
	@docker image ls
	@docker volume ls
	@docker network ls
	ls -la
