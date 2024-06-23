#!/bin/sh

mkdir -p ~/.ssh

echo "$JENKINS_SSH_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

ssh-keyscan github.com >> ~/.ssh/known_hosts

exec "$@"