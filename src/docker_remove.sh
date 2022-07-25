#!/bin/bash

# Funções para remover elementos docker
function docker_container_remove() {
    log "Limpando todos os containers..."
    docker container rm -f $(docker ps -aq)
    sleep 5
}

function docker_image_remove() {
    log "Limpand todas as imagens..."
    docker image rmi -f $(docker images -aq)
    sleep 5    
}

function docker_volume_remove() {
    log "Limpand todos os volumes..."
    docker volume rm $(docker volume ls -q)
    sleep 5  
}

function docker_network_remove() {
    log "Limpand todos os networks..."
    docker network rm $(docker network ls -q)
    sleep 5 
}