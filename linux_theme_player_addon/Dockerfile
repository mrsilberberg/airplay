ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache alsa-utils

COPY run.sh /run.sh
COPY sound/theme.wav /theme.wav

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
