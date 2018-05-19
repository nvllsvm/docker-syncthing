Yet another [Syncthing](https://github.com/syncthing/syncthing) Docker image.

# Environment Variables

**Optional**
- ``PUID`` - User ID to run as (default 1000)
- ``PGID`` - Group ID to run as (default 1000)

# Volumes

- ``/config`` - Syncthing configuration directory
- ``/folders`` - Parent location of all folders to sync

# Ports

- ``8384`` - Web UI
- ``22000`` - Listening port
- ``21027/udp`` - Discovery port

# Usage

```
$ docker run \
    -e PUID=1000 \
    -e PGID=1000 \
    -p 8384:8384 \
    -p 22000:22000 \
    -p 21027:21027/udp \
    -v /home/user/.config/.syncthing:/config \
    -v /home/user/Documents:/folders/Documents \
    -v /storage/Movies:/folders/Movies \
    nvllsvm/syncthing
```