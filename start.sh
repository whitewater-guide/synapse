#! /bin/bash

dockerize \
    -template \
    /template/secrets.yaml:/config/secrets.yaml \
    -template \
    /template/homeserver-env.yaml:/config/homeserver-env.yaml \
    -template \
    /template/whitewater.guide.signing.key:/config/whitewater.guide.signing.key \
    -template \
    /template/whitewater.guide.log.config:/config/whitewater.guide.log.config \
    -wait \
    tcp://${POSTGRES_HOST:-db.local}:${POSTGRES_PORT:-5432} \
    /start.py \
    run \
    -c \
    /config
