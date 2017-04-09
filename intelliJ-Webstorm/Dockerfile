FROM ubuntu:16.04
MAINTAINER Nicolas SAVOIS "nicolas.savois@gmail.com"

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list && \
    apt-get update && apt-get install -y software-properties-common curl && \
    add-apt-repository ppa:webupd8team/java -y && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer libxext-dev libxrender-dev libxtst-dev unzip libgtk2.0-0 libcanberra-gtk-module nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

# Install libgtk as a separate step so that we can share the layer above with
# the netbeans image

RUN echo 'Installing Idea' && \
    wget https://download.jetbrains.com/webstorm/WebStorm-2017.1.tar.gz -O /tmp/webstorm.tar.gz -q && \
    tar -xf /tmp/webstorm.tar.gz -C /opt &&\
    mv /opt/WebStorm-* /opt/webstorm/

#RUN apt-get update && apt-get install -y curl && \
    #curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    #apt-get install -y nodejs

RUN echo 'installing plugins' && \
    wget http://plugins.jetbrains.com/plugin/download?pr=idea_ce\&updateId=31805 -O /tmp/IdeaVIM.zip -q && \
    unzip /tmp/IdeaVIM.zip -d /opt/webstorm/plugins/

CMD /opt/webstorm/bin/webstorm.sh

