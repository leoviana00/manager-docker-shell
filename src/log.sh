# Função para implementar log ( echo com a hora)
function log() {
  echo -e "${IYELLOW}$(date +'%Y-%m-%d %H:%M:%S')" "==> Manager Docker: $1${NC}"
}