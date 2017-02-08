# vim:set ft=dockerfile:
#FROM debian:jessie
FROM ubuntu:16.04

#FROM alpine:edge

#RUN apk --update add openssl ncurses erlang inotify-tools && rm -rf /var/cache/apk/*
RUN apt-get update 
RUN apt-get install -y wget openssl inotify-tools unzip curl
RUN wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install -y erlang

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

RUN wget -q https://github.com/elixir-lang/elixir/releases/download/v1.3.3/Precompiled.zip && \
    unzip Precompiled.zip && \
    rm -f Precompiled.zip && \
    ln -s /elixir/bin/elixirc /usr/local/bin/elixirc && \
    ln -s /elixir/bin/elixir /usr/local/bin/elixir && \
    ln -s /elixir/bin/mix /usr/local/bin/mix && \
    ln -s /elixir/bin/iex /usr/local/bin/iex

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN mix local.hex
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN npm install -g elm

CMD elixir --version && mix --version && iex --version && npm --version && node --version

WORKDIR /appli/

