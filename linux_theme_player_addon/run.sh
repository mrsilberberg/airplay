#!/usr/bin/with-contenv bash

echo "🎶 Tocando tema do Linux..."
aplay -D hw:1,0 /theme.wav
echo "🎵 Finalizado!"
