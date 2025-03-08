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
	@echo "=====================Listar os containers====================="
	@docker container ls -a
	@echo "\n=====================Listar as imagens====================="
	@docker image ls
	@echo "\n=====================Listar os volumes====================="
	@docker volume ls
	@echo "\n=====================Listar as redes====================="
	@docker network ls
	@echo "\n=====================Listar o diretório atual====================="
	@ls -la
