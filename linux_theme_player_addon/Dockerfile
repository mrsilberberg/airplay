FROM alpine:3.19

# Instala dependências
RUN apk add --no-cache mpg123 alsa-utils bash

# Copia o script e a música
COPY run.sh /run.sh
COPY theme/music.mp3 /theme/music.mp3

# Dá permissão de execução ao script
RUN chmod +x /run.sh

# Define o ponto de entrada
CMD [ "/run.sh" ]
