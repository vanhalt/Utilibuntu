FROM ubuntu:latest

RUN apt update
RUN apt install -y imagemagick exif

ARG UID=10001
RUN adduser \
    --disabled-password \
    --gecos "" \
    --uid "${UID}" \
    vanhalt
USER vanhalt

WORKDIR /home/vanhalt/

RUN mkdir $HOME/photos

COPY heic2jpg .
COPY exifrm .
