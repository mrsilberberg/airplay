#!/usr/bin/with-contenv bash

echo "🔊 Tocando tema de inicialização..."

# Toca o arquivo mp3 usando alsa no dispositivo correto
mpg123 -o alsa -a plughw:1,0 /theme/music.mp3
