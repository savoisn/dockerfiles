FROM python:3.4
MAINTAINER Nicolas SAVOIS

RUN addgroup --gid 1000 nico \
	&& adduser --disabled-login --home /home/nico --gid 1000 -u 1000 nico

RUN pip3 install hangups
RUN apt-get update
RUN apt-get install -y libnotify-bin vim
RUN apt-get install -y libdbus-1-dev libdbus-glib-1-dev
RUN pip3 install dbus-python

WORKDIR /home/nico

USER nico 

RUN mkdir -p .cache/hangups .config/hangups

#CMD /bin/bash
ENTRYPOINT ["hangups"]

