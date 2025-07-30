#!/bin/bash

echo "🎵 Iniciando Shairport Sync"
exec shairport-sync -v -a "HomeAssistant-Audio" -o alsa -- -d hw:1,0
