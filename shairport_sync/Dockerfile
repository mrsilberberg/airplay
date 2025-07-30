ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache shairport-sync alsa-utils dbus avahi

COPY run.sh /run.sh
RUN chmod a+x /run.sh
RUN apk add --no-cache avahi avahi-tools dbus

COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf

CMD [ "/run.sh" ]
