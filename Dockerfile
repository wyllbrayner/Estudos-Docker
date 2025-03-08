FROM debian:latest

RUN apt update -y && apt upgrade -y && \
    apt install build-essential -y && \
    apt install python3 -y && apt install python3-pip -y && \
    apt install python3.11-venv -y && \
    apt install vim -y && apt install git -y && \
    apt install curl -y && \
    curl -LsSf https://astral.sh/uv/install.sh | sh
#    adiciona o uv às variáveis de ambiente, permitindo que seja encontrado facilmente pelo sistema
#    source $HOME/.local/bin/env
#    adiciona funcionalidade de auto-completar ao uv
#    eval "$(uv generate-shell-completion zsh)"

# CMD [ "bash" ]