TRACOS = "====================="

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
	@echo ${TRACOS}"Listar os containers"${TRACOS}
	@docker container ls -a
	@echo "\n${TRACOS}Listar as imagens"${TRACOS}
	@docker image ls
	@echo "\n${TRACOS}Listar os volumes"${TRACOS}
	@docker volume ls
	@echo "\n${TRACOS}Listar as redes"${TRACOS}
	@docker network ls
	@echo "\n${TRACOS}Listar o diretório atual"${TRACOS}
	@ls -la
