#!/bin/bash

# Funções para criar containers
docker_run() {
    log "Criando um contaneir ${Name} com imagem base ${ImageBase} ..."
    docker container run --name ${Name} -d ${ImageBase} >/dev/null 2>&1 # Criando o container
    if [ $? -eq 0 ]; then
        docker container ls --format "{{.Names}}:  {{.Ports}}" | grep ${Name} | awk -F  ":::" '{print $1}' | awk -F ":" '{OFS="\t";print $1,$3}' # Pegando o nome do container e porta
    else
        log_err "Imagem ${ImageBase} não encontrada, tente uma imagem base existente"
    fi
    sleep 5
}

docker_run_ext() {
    log "Criando um contaneir ${Name} com imagem base ${ImageBase} ..."
    docker container run -P --name ${Name} -d ${ImageBase} >/dev/null 2>&1 # Criando o container
    if [ $? -eq 0 ]; then
        docker container ls --format "{{.Names}}:  {{.Ports}}" | grep ${Name} | awk -F  ":::" '{print $1}' | awk -F ":" '{OFS="\t";print $1,$3}' # Pegando o nome do container e porta
        PORT=`docker container ls --format "{{.Names}}:  {{.Ports}}" | grep ${Name} | awk -F  ":" '{print $3}' | awk -F "-" '{print $1}' ` # Pegando a porta para acesso externo do container e atribuindo em uma variável
        echo -e "${BWhite} URL: http://localhost:${PORT}${NC}" # Passando a url para acesso via web ao serviço
    else
        log_err "Imagem ${ImageBase} não encontrada, tente uma imagem base existente"
    fi
    sleep 5
}