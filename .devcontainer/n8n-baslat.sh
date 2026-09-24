#!/usr/bin/env bash
# Codespace her açıldığında n8n'i başlatır (derslerdeki sürüm: 2.40.6). Veri n8n_veri biriminde kalır.
set -e
URL="https://${CODESPACE_NAME}-5678.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
if ! docker start n8n >/dev/null 2>&1; then
  docker run -d --name n8n --restart unless-stopped -p 5678:5678 -v n8n_veri:/home/node/.n8n \
    -e GENERIC_TIMEZONE=Europe/Istanbul -e TZ=Europe/Istanbul -e N8N_DIAGNOSTICS_ENABLED=false \
    -e N8N_EDITOR_BASE_URL="$URL" -e WEBHOOK_URL="$URL/" \
    docker.n8n.io/n8nio/n8n:2.40.6 >/dev/null
fi
for i in $(seq 1 60); do
  curl -sf localhost:5678/healthz >/dev/null && { echo "n8n hazır → Ports sekmesinde 5678 (n8n editörü)"; exit 0; }
  sleep 3
done
echo "n8n açılmadı — günlük: docker logs n8n"; exit 1
