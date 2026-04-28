#!/bin/bash

VM_NAME="gtm-max"
VM_IMG="$HOME/vms/$VM_NAME.img"

echo "🚀 Watchdog started for $VM_NAME"

while true; do
  if pgrep -f "qemu-system-x86_64.*$VM_IMG" >/dev/null; then
    sleep 20
    continue
  fi

  echo "▶️ Starting $VM_NAME..."
  bash ~/idx-vps/vps.sh start "$VM_NAME"

  echo "⚠️ VM stopped. Restarting in 10 seconds..."
  sleep 10
done
