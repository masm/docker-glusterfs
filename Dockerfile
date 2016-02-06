FROM masm/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

VOLUME /data
VOLUME /var/lib/glusterd

RUN pacman -Sq glusterfs --needed --noconfirm --noprogressbar && \
    yes | pacman -Sqcc && \
    rm -rf /usr/share/man/*
