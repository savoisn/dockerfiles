FROM python:3.6.1-alpine
MAINTAINER Nicolas SAVOIS

RUN addgroup --gid 1000 nico \
	&& adduser --disabled-login --home /home/nico --gid 1000 -u 1000 nico

RUN pip3 install hangups
RUN apk update
RUN apk add libnotify libdbus
RUN pip3 install dbus-python

WORKDIR /home/nico

USER nico 

RUN mkdir -p .cache/hangups .config/hangups

#CMD /bin/bash
ENTRYPOINT ["hangups"]

