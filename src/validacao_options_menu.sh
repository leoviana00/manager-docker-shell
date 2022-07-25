#!/bin/bash

# Função para validar se a opção digitada é número ou letra
function validate_type_menu() {
    if [[ ${ACESSO} =~ ([0-9]+)$ ]]; then
        if [[ ${ACESSO} -gt 10 ]]; then
            log "Número ${ACESSO} fora do escopo definido, deve-se digita algum dos números entre as opções: 0 a 10 ..."
            sleep 5
        else
            type_menu # Function type_menu, localizada em type_options_menu.sh (Função que tras a ação de cada item do menu)            
        fi
    elif [[ ${ACESSO} =~ ^([[:alpha:]]+)$ ]];then
        log "Você digitou a letra ${ACESSO}, deve-se digita algum dos números entre as opções: 0 a 10 ..."
        sleep 5
    else
        log "Opção ${ACESSO} não definida, deve-se digita algum dos números entre as opções: 0 a 10 ..."
        sleep 5
    fi
}