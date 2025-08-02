# Monitor Prometheus e Grafana

## Instalação

### Clone o repositório:
```bash
git clone <repo> && cd vmonitor
```

### Crie as pastas dos dados
```
mkdir prometheus_data grafana_data
```

### Dar permissões para escrever nas pastas
```
sudo chown -R 65534:65534 prometheus_data
sudo chown -R 472:472 grafana_data
```

### Rodar
```
chmod +x start.sh
VRISING_IP=SEU_IP ./start.sh
```

### Acesse nos navegadores
Prometheus: http://localhost:9090

Grafana: http://localhost:3000

Login: admin / Senha: admin


### Adicione Prometheus como fonte no Grafana
Vá no Grafana > Configurações (⚙️) > Data Sources > Add Prometheus

URL: http://localhost:9090

Salve