#!/bin/bash

# Cria diretórios necessários
mkdir -p /var/lib/mpd/music /var/lib/mpd/playlists /var/lib/mpd/cache /var/lib/mpd/state

# Gera configuração MPD
cat <<EOF > /etc/mpd.conf
music_directory        "/var/lib/mpd/music"
playlist_directory     "/var/lib/mpd/playlists"
db_file                "/var/lib/mpd/cache/tag_cache"
log_file               "/dev/stdout"
pid_file               "/run/mpd/pid"
state_file             "/var/lib/mpd/state/state"
user                   "root"

audio_output {
    type        "alsa"
    name        "Analog Output"
    device      "hw:1,0"
    mixer_type  "software"
}
EOF

# Inicia o MPD
exec mpd --no-daemon /etc/mpd.conf
