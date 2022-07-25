#!/bin/bash

# Função que contem a ação a ser chamada para cada opção do menu principal escolhida
function type_menu() {

    case "${ACESSO}" in
        1)
            docker_version # function docker_version localizada em docker_list.sh (Função para pegar a versão do docker)

    echo "=================================================="
    ;;
        2)
            docker_container_list # function docker_container_list localizada em docker_list.sh (Função para listar os container em execução)

    echo "=================================================="
    ;;
        3)
            docker_image_list # function docker_image_list localizada em docker_list.sh (Função para listar as imagens docker)

    echo "=================================================="
    ;;
        4)
            docker_volume_list # function docker_volume_list localizada em docker_list.sh (Função para listar os volumes)

    echo "=================================================="
    ;;
        5)
            docker_network_list # function docker_network_list localizada em docker_list.sh (Função para listar os  networks)
    echo "=================================================="
    ;;
        6)
            docker_container_remove # function docker_container_remove localizada em docker_remove.sh (Função para remover os containers)

    echo "=================================================="
    ;;
        7)
            docker_image_remove # function docker_image_remove localizada em docker_remove.sh (Função para remover as imagens)
    echo "=================================================="
    ;;
        8)
            docker_volume_remove # function docker_volume_remove localizada em docker_remove.sh (Função para remover os volumes)
    echo "=================================================="
    ;;
        9)
            docker_network_remove # function docker_network_remove localizada em docker_remove.sh (Função para remover os networks)

    echo "=================================================="
    ;;
        10)
            menu_docker_run # function docker_run localizada em docker_run.sh (Função para criar containers)

    echo "=================================================="
    ;;
        0)
            sair # function sair localizada em em docker_list.sh (Função para sair do sistema)

    echo "================================================"
    ;;

    *)
    esac

}