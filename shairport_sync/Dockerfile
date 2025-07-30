ARG BUILD_FROM
FROM $BUILD_FROM

# Define o ambiente de idioma
ENV LANG C.UTF-8

# Instala dependências necessárias
RUN apk add --no-cache \
    shairport-sync \
    alsa-utils \
    dbus \
    avahi

# Copia o script de inicialização
COPY run.sh /etc/s6-overlay/s6-rc.d/user/contents.d/run.sh
RUN chmod +x /etc/s6-overlay/s6-rc.d/user/contents.d/run.sh

# Declara o serviço a ser iniciado
COPY user /etc/s6-overlay/s6-rc.d/user
