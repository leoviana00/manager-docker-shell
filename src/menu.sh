#!/bin/bash

# Função menu principal
function menu(){
   
    while true 
    do
    log " 🟢 SISTEMA INICIALIZANDO ..."
    sleep 2
    echo -e "${GREEN}==================================================${NC}"
    echo -e "${GREEN}           🚀 Menu: Docker Manager                ${NC}"
    echo -e "${GREEN}          😎 Author: Leonardo Viana               ${NC}"
    echo -e "${GREEN}==================================================${NC}"
    echo -e "${IYELLOW}[  1  ] 🔸 Verificar versão do docker ${NC}"
    echo -e "${IYELLOW}[  2  ] 🔸 Listar containers em execução ${NC}"
    echo -e "${IYELLOW}[  3  ] 🔸 Listar imagens ${NC}"
    echo -e "${IYELLOW}[  4  ] 🔸 Listar volumes ${NC}"
    echo -e "${IYELLOW}[  5  ] 🔸 Listar networks ${NC}"
    echo -e "${IYELLOW}[  6  ] 🔸 Remover todos os containers ${NC}"
    echo -e "${IYELLOW}[  7  ] 🔸 Remover todas as imagens ${NC}"
    echo -e "${IYELLOW}[  8  ] 🔸 Remover todas os volumes ${NC}"
    echo -e "${IYELLOW}[  9  ] 🔸 Remover todas os networks ${NC}"
    echo -e "${IYELLOW}[  10 ] 🔸 Criar containers para exemplo ${NC}"
    echo -e "${IYELLOW}[  0  ] 🔸 Sair ${NC}"
    echo -e "${GREEN}==================================================${NC}"
    echo -e "${BWhite}Escolha uma das opções acima:  ${NC}"; read ACESSO
    echo -e "${BWhite}Opção informada ($ACESSO)${NC}"
    echo "=================================================="


    validate_type_menu # Chamando a função validate_type_menu localizada em type_options_menu.sh. (Função para validar a opção digitada)

    done
}