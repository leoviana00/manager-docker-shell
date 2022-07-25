#!/bin/bash

# Função para validar se a opção digitada é número ou letra
function validate_type_container() {
    if [[ ${ACESSO} =~ ([0-9]+)$ ]]; then
        if [[ ${ACESSO} -gt 2 ]]; then
            log "Número ${ACESSO} fora do escopo definido, tente novamente ..."
            sleep 5
        elif [[ ${ACESSO} -lt 1 ]]; then
            log "Número ${ACESSO} fora do escopo definido, tente novamente ..."
            sleep 5
        else
            type_container #função type_container em type_container.sh
        fi
    elif [[ ${ACESSO} =~ ^([[:alpha:]]+)$ ]];then
        echo -e "${RED}Você digitou a letra ${ACESSO}, deve-se digitar algum dos números das opções: 1 ou 2. ${NC}"
        log "Você digitou a letra ${ACESSO}, deve-se digita algum dos números das opções: 1 ou 2."
        sleep 5
    else
        log "Opção ${ACESSO} não definida, tente novamente ..."
        sleep 5
    fi
}