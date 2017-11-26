#!/usr/bin/env bash

MACHINE_NAME="${1:-default}"
SSH_KEY="$HOME/.docker/machine/machines/$MACHINE_NAME/id_rsa"

CREATE_ARGS="$2"
for ((i = 3; i <= $#; i++)) ; do
    CREATE_ARGS="$CREATE_ARGS ${!i}"
done

vagrant package --base $MACHINE_NAME --include $SSH_KEY --vagrantfile Vagrantfile $CREATE_ARGS
