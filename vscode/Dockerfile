FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      fakeroot \
      gconf2 \
      gconf-service \
      git \
      gvfs-bin \
      libasound2 \
      libcap2 \
      libgconf-2-4 \
      libgtk2.0-0 \
      libnotify4 \
      libnss3 \
      libxkbfile1 \
      libxss1 \
      libxtst6 \
      python \
			libx11-xcb-dev \
      xdg-utils && \
    apt-get clean && \
    curl -L https://go.microsoft.com/fwlink/?LinkID=760868 > /tmp/vscode.deb && \
    dpkg -i /tmp/vscode.deb && \
		apt-get install -f && \
    rm -rf /var/lib/apt/lists/* && \
		rm /tmp/vscode.deb && \
    useradd -d /home/vscode -m vscode

USER vscode
    #rm -f /tmp/vscode.deb && \


CMD ["/usr/bin/code","-w"]
