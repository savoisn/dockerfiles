# vim:set ft=dockerfile:
#FROM debian:jessie
FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y software-properties-common curl apt-transport-https git\
    && add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" 
RUN curl -L https://cli-assets.heroku.com/apt/release.key | apt-key add -
RUN apt-get update \
    && apt-get install -y heroku

WORKDIR /appli/

CMD heroku --version
