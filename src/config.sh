#!/usr/bin/env bash

# Get options from env
DHP_PHP_IMAGE_FROM_ENV=${DHP_PHP_IMAGE}
DHP_EXPORT_ENV_FROM_ENV=${DHP_EXPORT_ENV}

# Default values
DHP_PHP_IMAGE="docker2o.itim.vn/library/php:7.0"

# Find and load config
PARENT_PATH="$PWD"
PREV_PWD="$PWD"
while [[ "$PARENT_PATH" != "/" && ! -f "$PARENT_PATH/.dhp" ]];
do
    cd ..
    PARENT_PATH=$PWD
done
cd "$PREV_PWD"

if [[ -f "$PARENT_PATH/.dhp" ]]; then
    source "$PARENT_PATH/.dhp"
fi

# Apply options from env if present
if [[ -n "$DHP_PHP_IMAGE_FROM_ENV" ]]; then
    DHP_PHP_IMAGE="$DHP_PHP_IMAGE_FROM_ENV"
fi
if [[ -n "$DHP_EXPORT_ENV_FROM_ENV" ]]; then
    DHP_EXPORT_ENV="$DHP_EXPORT_ENV_FROM_ENV"
fi
