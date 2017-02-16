FROM ubuntu:16.04
MAINTAINER Nicolas SAVOIS "nicolas.savois@gmail.com"

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list && \
    apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer libxext-dev libxrender-dev libxtst-dev unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

# Install libgtk as a separate step so that we can share the layer above with
# the netbeans image
RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module

#RUN wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    #echo 'Installing eclipse' && \
    #tar -xf /tmp/eclipse.tar.gz -C /opt && \
    #rm /tmp/eclipse.tar.gz
RUN wget https://download-cf.jetbrains.com/idea/ideaIC-2016.3.4.tar.gz -O /tmp/idea.tar.gz -q
RUN wget https://download.jetbrains.com/webstorm/WebStorm-2016.3.3.tar.gz -O /tmp/webstorm.tar.gz -q
RUN echo 'Installing Idea' && \
    tar -xf /tmp/webstorm.tar.gz -C /opt &&\
    mv /opt/webstorm-* /opt/webstorm/


#RUN chown -R 1000:1000 /opt/idea

#RUN mkdir -p /Projects

#WORKDIR /Projects
CMD /opt/webstorm/bin/webstorm.sh

