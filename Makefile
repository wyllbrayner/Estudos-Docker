GREEN	= \033[32m
GRAY	= \033[30m
RESET	= \033[0m
SUCESS	= "executado com sucesso!"

all: up

up:
	@docker compose up -d
	@echo "$(GREEN)Comando 'docker compose up -d' $(SUCESS)$(RESET)"

build:
	@docker compose build
	@echo "$(GREEN)Comando 'docker compose build' $(SUCESS)$(RESET)"

down:
	@docker compose down
	@echo "$(GREEN)Comando 'docker compose down' $(SUCESS)$(RESET)"

exec: up
	@docker exec -it meu_container bash

clean: down

fclean: clean
	@docker image rm linux_dev:4.2.0
	@echo "$(GREEN)Comando 'docker image rm linux_dev:4.2.0' $(SUCESS)$(RESET)"
	@rm -rf test_dir_local
	@echo "$(GREEN)Comando 'rm -rf test_dir_local' $(SUCESS)$(RESET)"

list:
	@echo "$(GREEN)=====================Listar os containers==========================$(RESET)"
	@docker container ls -a
	@echo "$(GREEN)=====================Listar as imagens============================$(RESET)"
	@docker image ls
	@echo "$(GREEN)=====================Listar os volumes============================$(RESET)"
	@docker volume ls
	@echo "$(GREEN)=====================Listar as redes==============================$(RESET)"
	@docker network ls
	@echo "$(GREEN)=====================Listar o diretório atual=====================$(RESET)"
	@ls -la
	@echo "$(RESET)"

.PHONY: all up down exec clean fclean list