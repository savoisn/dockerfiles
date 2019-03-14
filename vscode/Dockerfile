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
      libsecret-1-0 \
      python \
			libx11-xcb-dev \
      xdg-utils && \
    apt-get clean && \
    curl -L https://az764295.vo.msecnd.net/stable/79b44aa704ce542d8ca4a3cc44cfca566e7720f1/code_1.21.1-1521038896_amd64.deb > /tmp/vscode.deb && \
    dpkg -i /tmp/vscode.deb && \
		apt-get install -f && \
    rm -rf /var/lib/apt/lists/* && \
		rm /tmp/vscode.deb && \
    useradd -d /home/vscode -m vscode

USER vscode
    #rm -f /tmp/vscode.deb && \


CMD ["/usr/bin/code-insiders","-w"]
