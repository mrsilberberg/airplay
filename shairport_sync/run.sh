#!/bin/bash

echo "🎶 Iniciando Shairport Sync..."

# Exibe dispositivos de som detectados
aplay -l

# Inicia o serviço AirPlay
exec shairport-sync -v -d
