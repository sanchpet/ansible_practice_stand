#!/usr/bin/env bash

set -Eeuo pipefail

ANSIBLE_HOSTS=$'192.168.1.132 stage.ansible\n192.168.1.133 prod.ansible'
grep -qxF "${ANSIBLE_HOSTS}" /etc/hosts || echo "${ANSIBLE_HOSTS}" | sudo tee -a /etc/hosts > /dev/null
