#!/usr/bin/env bash
#
# Скрипт создаёт новую роль
#

[ $# -ne 1 ] && echo -e "Usage:\n\t$0 {role_name}" && exit 1


DEPENDENCY_NAME=galaxy
DRIVER_NAME=docker
PROVISIONER_NAME=ansible
VERIFIER_NAME=testinfra
ROLE_NAME="$1"

molecule init role --dependency-name "${DEPENDENCY_NAME}" --driver-name "${DRIVER_NAME}" \
                   --provisioner-name "${PROVISIONER_NAME}" --verifier-name "${VERIFIER_NAME}" "${ROLE_NAME}"
