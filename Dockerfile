FROM alpine:edge

RUN apk update && apk add shadow syncthing su-exec

EXPOSE 8384 22000 21027/UDP

VOLUME /config
VOLUME /folders

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
