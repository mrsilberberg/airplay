FROM alpine:3.19

RUN apk add --no-cache mpg123

COPY run.sh /run.sh
COPY theme.mp3 /theme.mp3
RUN chmod +x /run.sh

CMD [ "/run.sh" ]