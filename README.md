# Containers com Docker

## O que são Containers?
São unidades de softwares que empacota o código e todas as suas dependências para que o aplicativo seja executado de forma rápida e confiável de um ambiente de computação para outro.

## O que são Imagens?
São pacotes de software leve, autônomo e executável que inclui tudo o que é necessário para executar um aplicativo: código, tempo de execução, ferramentas do sistema, bibliotecas do sistema e configurações.

## Resumo
__Containers__ são imagens que estão sendo executadas no momento da observação e __imagens__ são 'pacotes' com os pedaços de código necessários para sua execução. 

## Pré-requisitos:
* Docker instalado em sua máquina (vide a página oficial do <a href="https://www.docker.com/products/docker-desktop/">Docker</a> para maiores detalhes).

# Descrição do Projeto
Este projeto utiliza-se do arquivo Dockerfile montado no projeto <a href="https://github.com/wyllbrayner/Estudos-dev_container">Estudos-dev_container</a> e visa realizar um primeiro mergulho no ambiente Docker e em suas funcionalidades/facilidades para o desenvolvimento de softwares.

## Arquivos
* Docker: arquivo utilizado para descrever os passos necessários para criação da imagem.
* docker-compose.yaml: arquivo utilizado para gerir múltiplas imagens, caso seja necessário.
* Makefile: arquivo utilizado para falicitar o desenvolvedor ao digitar comandos no terminal.

## Regras presentes no Makefile
* __Make _ou_ Make up__: executa o comando 'docker compose up -d'.
Comando utilizado para criar as imagens definidas no arquivo 'docker-compose.yaml', criar os respectivos containers (imagens em execução) e deixar os containers em execução em segundo plano.
* __Make build__: executa o comando 'docker compose build'.
Comando utilizado para apenas criar as imagens definidas no arquivo 'docker-compose.yaml'.
* __Make Down__:  executa o comando 'docker compose down'.
Comando utilizado destruir os contaiers em execução.
* __Make exec__:  executa a regra Make up e, posteriormente, executa o comando 'docker exec -it meu_container bash'.
Comando utilizado acessar o container criado.

* __Make fclean__: executa a regra Make down e, posteriormente, executa os comandos 'docker image rm linux_dev:4.2.0' e 'rm -rf test_dir_local'.
Esta regra limpa todo o conteúdo criado (containers, imagens e pastas).
* __Make list__: executa os comandos 'docker container ls -a', 'docker image ls', 'docker volume ls', 'docker network ls' e 'ls -la'.
Comando utilizado listas todos os recursos docker e pastas criados pelos projeto.

## Referências bibliográficas
<footer>
    <p>Acesse o <a href="https://www.docker.com/">site</a> oficial do Docker para maiores informações.
    </p>
</footer>