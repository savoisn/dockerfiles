# vim:set ft=dockerfile:
#FROM debian:jessie
FROM ubuntu:17.10

# elixir expects utf8.
ENV ELIXIR_VERSION="v1.4.1" \
	LANG=C.UTF-8

#FROM alpine:edge

#RUN apk --update add openssl ncurses erlang inotify-tools && rm -rf /var/cache/apk/*
RUN apt-get update
RUN apt-get install -y wget openssl inotify-tools unzip curl git 
RUN wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_20.3.6-1~ubuntu~artful_amd64.deb
RUN apt-get install -y libwxgtk3.0-0v5
RUN apt-get install -y libsctp1 
RUN dpkg -i esl-erlang_20.3.6-1~ubuntu~artful_amd64.deb

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs

ENV ELIXIR_VERSION="v1.6.6" \
	LANG=C.UTF-8

RUN apt-get install -y build-essential

RUN set -xe \
	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" \
	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" \
	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL \
	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - \
	&& mkdir -p /usr/local/src/elixir \
	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz \
	&& rm elixir-src.tar.gz \
	&& cd /usr/local/src/elixir \
	&& make install clean

RUN useradd -d /home/nico/ -m nico
RUN ls -la /home/

USER nico

RUN mix local.hex --force
RUN mix local.rebar --force
CMD elixir --version && mix --version && iex --version && npm --version && node --version

WORKDIR /appli/


