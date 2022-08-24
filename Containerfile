FROM quay.io/centos/centos:stream9

RUN dnf install -y samba samba-client cifs-utils shadow-utils \
 && dnf clean all
VOLUME /srv/samba
EXPOSE 445

RUN groupadd -g 1000 itix \
 && useradd -d /home/nicolas -g itix -u 1000 -m nicolas

ADD entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ ]

