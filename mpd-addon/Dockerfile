FROM alpine:3.19

RUN apk add --no-cache \
    mpd \
    alsa-utils \
    bash \
    curl

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
