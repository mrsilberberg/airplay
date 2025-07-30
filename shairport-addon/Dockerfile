
ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Instala shairport-sync
RUN apk add --no-cache shairport-sync

# Diretório de configuração
COPY rootfs / 

# Permissão de execução
RUN chmod +x /etc/services.d/spotifyd/run
