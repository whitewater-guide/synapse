FROM matrixdotorg/synapse:v1.71.0

ARG DOCKERIZE_VERSION=0.16.5

RUN curl -sfL https://github.com/powerman/dockerize/releases/download/v${DOCKERIZE_VERSION}/dockerize-`uname -s`-`uname -m` | install /dev/stdin /usr/local/bin/dockerize

COPY --chown=991:991 ./config  /config
COPY --chown=991:991 ./template  /template

RUN ls -la /

ENTRYPOINT [ "dockerize", \
    "-template", \
    "/template/secrets.yaml:/config/secrets.yaml", \
    "-template", \
    "/template/homeserver-env.yaml:/config/homeserver-env.yaml", \
    "-template", \
    "/template/whitewater.guide.signing.key:/config/whitewater.guide.signing.key", \
    "-template", \
    "/template/whitewater.guide.log.config:/config/whitewater.guide.log.config", \
    "-wait", \
    "tcp://db.local:5432", \
    "/start.py", \
    "run", \
    "-c", \
    "/config" \
    ]
