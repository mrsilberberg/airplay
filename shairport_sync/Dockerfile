FROM ghcr.io/hassio-addons/base:10.2.0

RUN apk add --no-cache shairport-sync alsa-utils

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
