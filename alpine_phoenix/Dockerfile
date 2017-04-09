FROM bitwalker/alpine-elixir-phoenix:latest

# Set exposed ports
EXPOSE 8080

RUN wget -q  https://github.com/phoenixframework/archives/raw/master/phoenix_new-1.2.1.ez -O /tmp/phoenix_new-1.2.1.ez && \
  mix archive.install --force /tmp/phoenix_new-1.2.1.ez && \
  rm /tmp/phoenix_new-1.2.1.ez && \
  mix local.hex --force && \
  mix local.rebar --force 

RUN apk --no-cache --update add python 

RUN adduser -h /home/nico/ -D nico nico

RUN mkdir -p /opt/app/.npm && \
    chown -R nico /opt/app/.npm && \
    chgrp -R nico /opt/app/.npm && \
    chown -R nico /usr/lib && \
    chgrp -R nico /usr/lib

WORKDIR /appli/
