#!/usr/bin/env bash

docker run -i \
           -v "${PWD}":"${PWD}" \
           -v "${BINARY_DIR}":"${BINARY_DIR}" \
           -v /tmp/:/tmp/ \
           -v /private:/private \
           -v ~/.composer:/root/.composer \
           -w "${PWD}" \
           --sig-proxy=true \
           --net=qc \
           --sig-proxy=true \
           --pid=host \
           --rm \
           ${ARG_TTY} \
           ${ARG_ENV} \
           ${ARG_XDEBUG} "${ARG_XDEBUG_PARAMS}" \
           ${DHP_DOCKER_IMAGE} \
           php "$@"