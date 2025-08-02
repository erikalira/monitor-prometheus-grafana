#!/bin/bash

# Verifica se VRISING_IP foi definido
if [ -z "$VRISING_IP" ]; then
  echo "Erro: variável de ambiente VRISING_IP não está definida."
  echo "Use assim: VRISING_IP=192.168.10.11 ./start.sh"
  exit 1
fi

echo "IP definido: $VRISING_IP"

# Gerar prometheus.yml usando envsubst
SCRIPT_DIR=$(dirname "$(realpath "$0")")
envsubst < "$SCRIPT_DIR/prometheus.yml.template" > "$SCRIPT_DIR/prometheus.yml"

echo "Arquivo prometheus.yml gerado:"
cat "$SCRIPT_DIR/prometheus.yml"

docker-compose up -d
