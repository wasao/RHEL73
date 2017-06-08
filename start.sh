#!/bin/sh

fusermount -zu $XDG_RUNTIME_DIR/gvfs
ntpdate ntp.nict.jp
snort -A fast -b -d -D -i enp9s0 -u snort -g snort -c /etc/snort/snort.conf -l /var/log/snort

