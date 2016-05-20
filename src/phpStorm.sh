#!/usr/bin/env bash

# Disable TTY for PHPStorm
ARG_TTY=""
if [ "$XPC_SERVICE_NAME" == "0" ]; then
    ARG_TTY="-t"
fi