ARG BASEIMAGE=node:10-alpine
FROM ${BASEIMAGE}

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL mantainer="Eloy Lopez <elswork@gmail.com>" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="json-server" \
    org.label-schema.description="json-server for amd64, arm32v7 arm64v8" \
    org.label-schema.url="https://deft.work/" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/DeftWork/json-server" \
    org.label-schema.vendor="Deft Work" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

RUN  npm install -g --production json-server  && \
        rm -rf /root/.npm /usr/lib/node_modules/npm

EXPOSE 3000
VOLUME [ "/data" ]
WORKDIR /data

ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD ["--help"]