Overview:
-a simple project to repurpose an old laptop as a nextloud storage
-runs docker container with nextcloud, mariadb and nginx to selfhost a cloud storage
-simple .sh script to run docker, create a cloudflare tunnel and set its randomly generated URL in the nextclouds trusted domains
-build it with cloudflares test domain to prototype before real implementation for a homelab with cloud storage and possible other services

-if you want to try it yourself you will need docker and cludflare installed as well as add .env file with basic settings for MQSQL and NEXTCLOUD usernames and passwords


Tech stack:
-Docker
-Nextcloud
-NGINX
-Cloudflare Tunnel

Features:
-File storage
-Remote access
