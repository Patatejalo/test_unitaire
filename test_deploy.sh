#!/bin/bash

set -e

sshpass -p "$SSH_PASSWORD" ssh \
  -o StrictHostKeyChecking=no \
  "$SSH_USER@$SSH_HOST" \
  "test -f /home/ubuntu/DLeroux/test-deploy/addition.py"

echo "Test OK : le fichier existe sur la VM"