#!/bin/bash
# ufw_setup.sh - Setup UFW for OpenResty and FRP

set -e

echo "🚀 Configuring UFW rules..."

ufw default deny incoming
ufw default allow outgoing

ufw allow 22/tcp    # SSH
ufw allow 80/tcp    # HTTP
ufw allow 443/tcp   # HTTPS
ufw allow 2095/tcp  # FRP port 1
ufw allow 7000/tcp  # FRP port 2

ufw enable

echo "✅ UFW is now active!"
ufw status verbose