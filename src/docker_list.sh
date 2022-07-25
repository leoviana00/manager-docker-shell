#!/bin/bash

# Arquivo de funções para listar elementos docker
function docker_version() {
    log "Verificando versão do docker ..."
    docker --version
    sleep 5
}

function docker_container_list() {
    log "Listando os containers em execução..."
    docker container ls
    sleep 5
}

function docker_image_list() {
    log "Listando as imagens..."
    docker images ls
    sleep 5
}

function docker_volume_list() {
    log "Listando os volumes..."
    docker volume ls
    sleep 5   
} 

function docker_network_list() {
    log "Listando os networks..."
    docker network ls
    sleep 5   
}

function sair() {
    log "🔴 SISTEMA SENDO FINALIZADO..."
    sleep 5
    clear;
    exit;   
}