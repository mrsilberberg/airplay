#!/command/with-contenv bash

echo "🔊 Starting Shairport Sync..."

# Iniciar o dbus e avahi
dbus-daemon --system &
sleep 1
avahi-daemon --no-drop-root &
sleep 2

# Iniciar o Shairport
shairport-sync -vv -a "HomeAssistant Speaker" -o alsa -- -d hw:1,0
