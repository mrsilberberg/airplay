ARG BUILD_FROM
FROM $BUILD_FROM

# S6 overlay ativado
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2
ENV S6_CMD_WAIT_FOR_SERVICES=1
ENV S6_SERVICES_GRACETIME=5000

# Instala dependências
RUN apk add --no-cache \
    shairport-sync \
    avahi \
    avahi-utils \
    dbus \
    alsa-utils \
    nss-mdns

# Cria o usuário que está faltando
RUN addgroup -S shairport-sync && adduser -S shairport-sync -G shairport-sync

# Copia configuração s6
COPY rootfs /

CMD [ "/init" ]
