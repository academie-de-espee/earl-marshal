#!/usr/bin/env bash
#
# Publish the built site (_site/) to the production web server over rsync.
# Expects SSH_KEY and RSYNC_KNOWN_HOSTS to be provided in the environment.
set -euo pipefail

mkdir -p "${HOME}/.ssh"
echo "${SSH_KEY}" > "${HOME}/.ssh/id_rsa"
echo "${RSYNC_KNOWN_HOSTS}" > "${HOME}/.ssh/known_hosts"
chmod 700 "${HOME}/.ssh"
chmod 600 "${HOME}"/.ssh/*
eval "$(ssh-agent -s)"
ssh-add "${HOME}/.ssh/id_rsa"
rsync -avr _site/ atlantia_marshal@marshal.atlantia.sca.org:marshal.atlantia.sca.org/
