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

RUN wget https://downloads.gradle.org/distributions/gradle-4.10.3-bin.zip -O /tmp/gradle-bin.zip -q && \
      mkdir /opt/gradle && \
      echo 'Installing Graddle' && \
      unzip -d /opt/gradle /tmp/gradle-bin.zip

#RUN wget https://download-cf.jetbrains.com/idea/ideaIC-2016.3.4.tar.gz -O /tmp/idea.tar.gz -q
#RUN wget https://download-cf.jetbrains.com/idea/ideaIU-2017.3.1.tar.gz -O /tmp/idea.tar.gz -q
#RUN wget https://download-cf.jetbrains.com/idea/ideaIU-2018.1.1.tar.gz -O /tmp/idea.tar.gz -q
#RUN wget https://download-cf.jetbrains.com/idea/ideaIU-2018.1.4.tar.gz -O /tmp/idea.tar.gz -q
#RUN https://download.jetbrains.com/idea/ideaIU-2018.2.5.tar.gz -O /tmp/idea.tar.gz -q
#RUN wget https://download-cf.jetbrains.com/idea/ideaIU-2018.2.5.tar.gz -O /tmp/idea.tar.gz -q
#RUN wget https://download.jetbrains.com/idea/ideaIU-2018.3.tar.gz -O /tmp/idea.tar.gz -q
#RUN wget https://download-cf.jetbrains.com/idea/ideaIU-2018.3.1.tar.gz -O /tmp/idea.tar.gz -q
#RUN wget https://download-cf.jetbrains.com/idea/ideaIU-2018.3.2.tar.gz -O /tmp/idea.tar.gz -q
RUN wget https://download-cf.jetbrains.com/idea/ideaIU-2018.3.4.tar.gz -O /tmp/idea.tar.gz -q
 
RUN echo 'Installing Idea' && \
    tar -xf /tmp/idea.tar.gz -C /opt &&\
    mv /opt/idea-* /opt/idea/

#RUN chown -R 1000:1000 /opt/idea

#RUN mkdir -p /Projects

#WORKDIR /Projects
CMD /opt/idea/bin/idea.sh

