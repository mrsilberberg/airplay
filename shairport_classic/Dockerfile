FROM alpine:3.19

# Instala dependências
RUN apk add --no-cache \
  shairport-sync \
  alsa-utils \
  avahi \
  dbus \
  dbus-glib \
  nss-mdns \
  bash \
  s6-overlay

# Copia arquivos de configuração
COPY avahi-daemon.conf /etc/avahi/avahi-daemon.conf
COPY avahi.service /etc/avahi/avahi-daemon.service
COPY etc/dbus-1/system.d/avahi-dbus.conf /etc/dbus-1/system.d/avahi-dbus.conf
COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD ["/run.sh"]
