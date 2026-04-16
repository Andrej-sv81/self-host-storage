## Overview

* A simple project to repurpose an old laptop as a Nextcloud storage server
* Runs Docker containers with Nextcloud, MariaDB, and Nginx to self-host cloud storage
* Includes a simple `.sh` script to start Docker, create a Cloudflare Tunnel, and automatically set the generated URL in Nextcloud trusted domains
* Built using Cloudflare’s temporary domain for prototyping before deploying to a real homelab setup

## Requirements

* Docker installed
* Cloudflare Tunnel (`cloudflared`) installed
* A `.env` file with basic settings for MySQL and Nextcloud usernames and passwords

## Tech Stack

* Docker
* Nextcloud
* Nginx
* Cloudflare Tunnel

## Features

* File storage
* Remote access
