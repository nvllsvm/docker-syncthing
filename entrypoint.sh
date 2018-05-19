#!/bin/sh
set -ex
export STNODEFAULTFOLDER=1
chown $PUID:$PGID /config /folders
su-exec $PUID:$PGID syncthing \
    -gui-address='0.0.0.0:8384' \
    -home=/config \
    -no-browser \
    -no-restart
