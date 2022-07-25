#!/bin/bash

# Função menu_docker_run
function menu_docker_run() {
    log "Criando containers para teste ..."
    echo " Infome o nome para o container: "; read Name
    echo " Informe o nome da imagem base a ser utilizada: "; read ImageBase
    echo -e "${GREEN}==================================================${NC}"
    echo -e "${BWhite}Será necessário acessar o serviço via web?  ${NC}"
    echo -e "${GREEN}==================================================${NC}"
    echo -e "${IYELLOW}1 - Não ${NC}"
    echo -e "${IYELLOW}2 - Sim ${NC}"
    echo -e "${IYELLOW}3 - Voltar ao menu ${NC}"
    echo -e "${GREEN}==================================================${NC}"
    echo -e "${BWhite}Escolha uma das opções acima:  ${NC}"; read ACESSO
    echo -e "${BWhite}Opção informada ($ACESSO)${NC}"
    echo "=================================================="
    
    validate_type_container # Função validate_type_container localizada em type_options_container.sh (Função responsável por executa a opção escolhida)
    
}