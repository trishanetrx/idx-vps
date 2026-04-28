#!/bin/bash

echo "🚀 Installing dependencies..."

sudo apt update -y
sudo apt install -y qemu-system cloud-image-utils wget

chmod +x ~/IDX-VPS/vps.sh

echo "✅ Environment ready"
