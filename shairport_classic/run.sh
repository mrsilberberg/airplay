#!/command/with-contenv bash

echo "🔊 Starting D-Bus & Avahi..."

mkdir -p /run/dbus
dbus-daemon --system --fork

avahi-daemon --no-drop-root --daemonize --debug

echo "✅ Avahi iniciado, iniciando Shairport Sync..."
shairport-sync -vv -a "HomeAssistant Speaker" -o alsa -- -d hw:1,0
