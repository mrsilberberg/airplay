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

# Cria usuário genérico
RUN adduser -D -H shairport-sync

# Copia scripts de inicialização
COPY services.d/shairport/run /etc/services.d/shairport/run
COPY services.d/avahi/run /etc/services.d/avahi/run

# Permissões
RUN chmod +x /etc/services.d/shairport/run /etc/services.d/avahi/run

ENTRYPOINT ["/init"]