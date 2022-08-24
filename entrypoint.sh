#!/bin/sh
mkdir -p /var/lib/samba/lock /var/lib/samba/private /run/samba
exec /usr/sbin/smbd --foreground --no-process-group --log-stdout "$@"
