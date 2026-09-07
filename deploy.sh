#!/bin/bash

set -e

sshpass -p "$SSH_PASSWORD" ssh \
  -o StrictHostKeyChecking=no \
  "$SSH_USER@$SSH_HOST" \
  "mkdir -p /home/ubuntu/DLeroux/test-deploy"

sshpass -p "$SSH_PASSWORD" scp \
  -o StrictHostKeyChecking=no \
  addition.py \
  "$SSH_USER@$SSH_HOST:/home/ubuntu/DLeroux/test-deploy/addition.py"

echo "Déploiement terminé"