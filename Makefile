include .env #importa o arquivo .env para o Makefile
GREEN	= \033[32m
GRAY	= \033[30m
RESET	= \033[0m
SUCESS	= "executado com sucesso!"

all: up

up:
	@docker compose up -d
	@echo "${GREEN}Comando 'docker compose up -d' ${SUCESS}${RESET}"

build:
	@docker compose build
	@echo "${GREEN}Comando 'docker compose build' ${SUCESS}${RESET}"

down:
	@docker compose down
	@echo "${GREEN}Comando 'docker compose down' ${SUCESS}${RESET}"

exec: up
	@docker exec -it ${CONTAINER_NAME} bash

clean: down

fclean: clean
	@docker image rm ${FULL_IMAGE_NAME}
	@echo "${GREEN}Comando 'docker image rm ${FULL_IMAGE_NAME}' ${SUCESS}${RESET}"
#	@rm -rf ${LOCAL_FOLDER}
#	@echo "${GREEN}Comando 'rm -rf ${LOCAL_FOLDER}' ${SUCESS}${RESET}"

re: fclean up

list:
	@echo "${GREEN}=====================Listar as imagens=============================${RESET}"
	@docker image ls
	@echo "${GREEN}=====================Listar os containers==========================${RESET}"
	@docker container ls -a
	@echo "${GREEN}=====================Listar os volumes=============================${RESET}"
	@docker volume ls
	@echo "${GREEN}=====================Listar as redes===============================${RESET}"
	@docker network ls
	@echo "${GREEN}=====================Listar o diretório atual======================${RESET}"
	@ls -la
	@echo "${RESET}"

.PHONY: all up down exec clean fclean re list