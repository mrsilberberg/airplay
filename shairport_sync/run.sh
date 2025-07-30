#!/bin/bash

echo "🔊 Iniciando Shairport Sync com saída: ${OUTPUT}"

exec shairport-sync -vv \
  --output=alsa \
  -- -d "${OUTPUT}"
