# Base docker image
FROM debian:jessie
MAINTAINER Nicolas SAVOIS <nicolas.savois@gmail.com>

# cheese 3.3.0

RUN apt-get update && apt-get install -y \
    apt-utils \
    cheese \
    --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb

# Autorun Slack
CMD ["/usr/bin/cheese"]
