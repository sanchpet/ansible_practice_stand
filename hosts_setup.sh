#!/usr/bin/env bash

set -Eeuo pipefail

ANSIBLE_HOSTS=$'77.222.38.161 stage.ansible\n77.222.38.213 prod.ansible'
grep -qxF "${ANSIBLE_HOSTS}" /etc/hosts || echo "${ANSIBLE_HOSTS}" | sudo tee -a /etc/hosts > /dev/null
