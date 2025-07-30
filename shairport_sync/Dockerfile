FROM alpine:3.18

SHELL ["/bin/ash", "-o", "pipefail", "-c"]

# Install dependencies
RUN apk add --no-cache     alsa-utils     avahi     dbus     shairport-sync     bash     s6-overlay

# Copy run script and s6 service
COPY run.sh /run.sh
COPY user/ /etc/services.d/shairport/
RUN chmod +x /run.sh /etc/services.d/shairport/run

CMD ["/init"]
