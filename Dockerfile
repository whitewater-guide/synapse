FROM matrixdotorg/synapse:v1.71.0

ARG DOCKERIZE_VERSION=0.16.5

RUN curl -sfL https://github.com/powerman/dockerize/releases/download/v${DOCKERIZE_VERSION}/dockerize-`uname -s`-`uname -m` | install /dev/stdin /usr/local/bin/dockerize

COPY --chown=991:991 ./config  /config
COPY --chown=991:991 ./template  /template
COPY --chown=991:991 start.sh .

ENTRYPOINT [ "./start.sh"]
