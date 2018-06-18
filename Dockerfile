FROM alpine:edge

RUN apk update && apk add syncthing su-exec

EXPOSE 8384 22000 21027/UDP

VOLUME /config
VOLUME /folders

HEALTHCHECK --timeout=10s CMD nc -z localhost 8384 || exit 1

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
