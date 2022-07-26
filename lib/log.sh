#!/bin/bash

# Função para implementar log ( echo com a hora)

# Log - AVISO
function log() {
  echo -e "${IYELLOW}$(date +'%Y-%m-%d %H:%M:%S')" "==> Manager Docker: $1${NC}"
}

# Log - ERROR
function log_err() {
  echo -e "${RED}$(date +'%Y-%m-%d %H:%M:%S')" "==> Error: $1${NC}"
}