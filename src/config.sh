#!/usr/bin/env bash

# Get options from env
DHP_DOCKER_IMAGE_FROM_ENV=${DHP_DOCKER_IMAGE}
DHP_EXPORT_ENV_FROM_ENV=${DHP_EXPORT_ENV}

# Default values
DHP_DOCKER_IMAGE="docker2o.itim.vn/library/php:7.0"

# Find and load config
PARENT_PATH="$PWD"
while [[ "$PARENT_PATH" != "/" && ! -f "$PARENT_PATH/.dhp" ]];
do
    PARENT_PATH=$(dirname $(deepReadLink "$PARENT_PATH/../.."))
done

if [[ -f "$PARENT_PATH/.dhp" ]]; then
    source "$PARENT_PATH/.dhp"
fi

# Apply options from env if present
if [[ -n "$DHP_DOCKER_IMAGE_FROM_ENV" ]]; then
    DHP_DOCKER_IMAGE="$DHP_DOCKER_IMAGE_FROM_ENV"
fi
if [[ -n "$DHP_EXPORT_ENV_FROM_ENV" ]]; then
    DHP_EXPORT_ENV="$DHP_EXPORT_ENV_FROM_ENV"
fi
