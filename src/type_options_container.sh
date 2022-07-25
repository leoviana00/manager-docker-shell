#!/bin/bash

# Função que contem a ação a ser chamada para cada opção de container a ser criado escolhido
function type_container() {
    case "$ACESSO" in
        1) docker_run # Function docker_run, localizada em docker_run.sh (Função que cria um container)
        echo "=================================================="
        ;;

        2) docker_run_ext # Function docker_run, localizada em docker_run.sh (Função que cria um container com acesso web)
        echo "=================================================="
        ;;
        
        3) menu # Function docker_run, localizada em docker_run.sh (Função que cria um container com acesso web)
        echo "=================================================="
        ;;
    *)
    esac
}