#!/bin/bash
echo "Starting Docker..."
docker compose up -d

echo "Waiting for services..."
sleep 15

echo "Starting Cloudflare tunnel..."
cloudflared tunnel --url http://localhost:80 > tunnel.log 2>&1 &
TUNNEL_PID=$!

sleep 8

URL=$(grep -o 'https://.*trycloudflare.com' tunnel.log | head -n 1)

echo "Tunnel URL: $URL"

DOMAIN=$(echo $URL | sed 's|https://||')

echo "Adding trusted domain to Nextcloud..."

docker exec -u www-data compose-nextcloud-1 php occ config:system:set trusted_domains 1 --value=$DOMAIN

echo "Done!"
echo "Open: $URL"