#!/bin/bash

# Verifica se IP foi definido
if [ -z "$IP" ]; then
  echo "Erro: variável de ambiente IP não está definida."
  echo "Use assim: IP=192.168.10.11 ./start.sh"
  exit 1
fi

echo "IP definido: $IP"

# Gerar prometheus.yml usando envsubst
SCRIPT_DIR=$(dirname "$(realpath "$0")")
envsubst < "$SCRIPT_DIR/prometheus.yml.template" > "$SCRIPT_DIR/prometheus.yml"

echo "Arquivo prometheus.yml gerado:"
cat "$SCRIPT_DIR/prometheus.yml"

docker-compose up -d
