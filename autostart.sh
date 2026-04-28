#!/bin/bash

echo "🚀 Auto-starting VM..."

# Wait a bit to ensure environment is ready
sleep 5

# Run the script and auto-select:
# 2 = Start VM
# 1 = First VM in list (your gtm-max)

printf "2\n1\n" | bash ~/idx-vps/vps.sh
