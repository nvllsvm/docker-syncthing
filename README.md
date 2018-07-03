A [Syncthing](https://github.com/syncthing/syncthing) image with configurable UID and GID.

# Environment Variables

**Optional**
- ``PUID`` - User ID to run as (default 1000)
- ``PGID`` - Group ID to run as (default 1000)

# Volumes

- ``/var/syncthing/config`` - Syncthing configuration directory
- ``/var/syncthing/*`` - Parent location of all folders to sync

# Ports

- ``8384`` - Web UI
- ``22000`` - Listening port
- ``21027/udp`` - Discovery port

# Usage

The network should be to ``host`` for best performance.

```
$ docker run \
    --net host \
    -e PUID=1000 \
    -e PGID=1000 \
    -p 8384:8384 \
    -p 22000:22000 \
    -p 21027:21027/udp \
    -v /home/user/.config/.syncthing:/var/syncthing/config \
    -v /home/user/Documents:/var/syncthing/folders/Documents \
    -v /storage/Movies:/var/syncthing/folders/Movies \
    nvllsvm/syncthing
```
