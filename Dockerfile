FROM syncthing/syncthing

USER root

RUN apk update && apk add su-exec

ENV PUID=1000
ENV PGID=1000

ENTRYPOINT chown $PUID:$PGID /var/syncthing \
    && su-exec $PUID:$PGID /bin/syncthing -home /var/syncthing/config -gui-address 0.0.0.0:8384
