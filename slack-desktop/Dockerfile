# Base docker image
FROM debian:jessie
MAINTAINER Nicolas SAVOIS <nicolas.savois@gmail.com>

#building it 
  #docker build -t nsa/slack:3.3 .

#running it
	#docker run -d \
    #-v /var/run/dbus:/var/run/dbus \
    #-v /run/user/1000/bus:/run/user/1000/bus \
    #-v ~/.dbus/:/home/nico/.dbus/ \
		#-v "${HOME}/.Xauthority:$HOME/.Xauthority" \
		#-v "/var/run/user/$(id -u):/var/run/user/$(id -u)" \
		#-e XAUTHORITY \
		#-e DBUS_SESSION_BUS_ADDRESS \
    #-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
    #-e DISPLAY \
    #-e TZ=CET-1 \
    #--device /dev/snd \
    #--device=/dev/video0:/dev/video0 \
    #-v /dev/shm:/dev/shm \
    #-v ~/.config/Slack:/home/nico/.config/Slack \
    #-v /etc/passwd:/etc/passwd \
    #-v /etc/group:/etc/group \
    #-v /home/nico/slack-home/:/home/nico \
    #-v /home/nico/Downloads:/home/nico/Downloads \
    #-u $(id -u):$(id -g) \
    #--name slack \
    #nsa/slack:3.3

# Slack Version 3.3.0

RUN apt-get update && apt-get install -y \
    apt-utils \
    dbus-x11 \
    dunst \
    hunspell-en-us \
    python3-dbus \
    software-properties-common \
    libx11-xcb1 \
    gconf2 \
    libgtk2.0-0 \
    libgtk3.0 \
    libnotify4 \
    libxtst6 \
    libnss3 \
    gvfs-bin \
    xdg-utils \
    apt-transport-https \
    libgnome-keyring0 \
    gir1.2-gnomekeyring-1.0 \
    libappindicator1 \
    libasound2 \
    libcurl3 \
    libsecret-1-0 \
    wget \
    --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


#RUN wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.1.0-amd64.deb -O /tmp/slack-desktop-2.1.0-amd64.deb && \
RUN wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.3-amd64.deb -O /tmp/slack-desktop-amd64.deb && \
    cd /tmp/ && \
    dpkg -i slack-desktop-amd64.deb && \
    rm -rf /tmp/slack-desktop*.deb

ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb

RUN apt-get update && apt-get install -y \
    alsa-base \
    alsa-utils \
    --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update && apt-get install -y \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    xdg-utils \
    --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN cp /usr/share/zoneinfo/Europe/Paris /etc/timezone

# Autorun Slack
CMD ["/usr/lib/slack/slack"]
