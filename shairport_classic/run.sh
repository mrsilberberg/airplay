#!/usr/bin/with-contenv bash
echo "🔊 Starting Shairport Sync..."

# Inicia Avahi e D-Bus
dbus-daemon --system &
avahi-daemon --no-drop-root &

# Aguarda 1s para serviços iniciarem
sleep 1

# Executa o Shairport
shairport-sync -vv -a "HomeAssistant Speaker" -o alsa -- -d hw:1,0
