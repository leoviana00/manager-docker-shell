#!/bin/bash

# Importaçõe
source ./lib/colors.sh
source ./lib/log.sh
source ./src/docker_list.sh
source ./src/docker_remove.sh
source ./src/docker_run.sh
source ./src/menu_docker_run.sh
source ./src/menu.sh
source ./src/validacao_options_container.sh
source ./src/validacao_options_menu.sh
source ./src/type_options_container.sh
source ./src/type_options_menu.sh


# Forçar o script ser utilizado com user rootDiferença de EUID para UID?
if [[ ${EUID} -ne 0 ]]; then
    log "Esse script deve ser executado como root." > /dev/stderr
    exit 1
fi

menu # Chamando a função menu em ./src/menu.sh