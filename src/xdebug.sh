#!/usr/bin/env bash

ARG_XDEBUG="-v"
ARG_XDEBUG_PARAMS="/dev/null:/etc/php/mods-available/xdebug.ini"

if [[ ! -z $XDEBUG_CONFIG ]]; then
    ARG_XDEBUG="-e"
    ARG_XDEBUG_PARAMS="XDEBUG_CONFIG=$XDEBUG_CONFIG remote_host=${XDEBUG_REMOTE_HOST:=172.17.0.1}"
fi