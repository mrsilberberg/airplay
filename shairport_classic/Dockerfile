# Base Alpine
FROM alpine:3.19

# Instala dependências
RUN apk add --no-cache \
    shairport-sync \
    alsa-utils \
    avahi \
    dbus \
    dbus-glib \
    bash \
    s6

# Copia arquivos de configuração
COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf
COPY avahi.service /etc/s6-overlay/s6-rc.d/avahi-daemon/run
COPY etc/dbus-1/system.d/avahi-dbus.conf /etc/dbus-1/system.d/avahi-dbus.conf
COPY run.sh /run.sh

# Permissões
RUN chmod +x /run.sh && \
    chmod +x /etc/s6-overlay/s6-rc.d/avahi-daemon/run

# Entrypoint
CMD ["/run.sh"]
