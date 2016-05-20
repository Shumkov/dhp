#!/usr/bin/env bash

ARG_XDEBUG="-v"
ARG_XDEBUG_PARAMS="/dev/null:/etc/php/mods-available/xdebug.ini"
if [[ ! -z $XDEBUG_CONFIG ]]; then
    if [[ $(uname) == 'Darwin' ]]; then
        IP_ADDRESS=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | sed "s/addr://" | head -n 1)
    else
        IP_ADDRESS="172.17.0.1"
        #$(ip route list | awk '/default/ {print $3; exit}')
    fi

    ARG_XDEBUG="-e"
    ARG_XDEBUG_PARAMS="XDEBUG_CONFIG=$XDEBUG_CONFIG remote_host=$IP_ADDRESS"
fi