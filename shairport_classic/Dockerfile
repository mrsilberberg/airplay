ARG BUILD_FROM
FROM $BUILD_FROM

ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2
ENV S6_CMD_WAIT_FOR_SERVICES=1
ENV S6_SERVICES_GRACETIME=5000

RUN apk add --no-cache \
    shairport-sync \
    avahi \
    avahi-utils \
    dbus \
    alsa-utils \
    nss-mdns

RUN addgroup -S shairport-sync && adduser -S shairport-sync -G shairport-sync

COPY rootfs /

CMD [ "/init" ]
