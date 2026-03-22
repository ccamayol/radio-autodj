FROM ubuntu:22.04

RUN apt update && apt install -y icecast2 liquidsoap mime-support

COPY icecast.xml /etc/icecast2/icecast.xml
COPY radio.liq /radio.liq
COPY music /music

CMD icecast2 -n -c /etc/icecast2/icecast.xml & liquidsoap /radio.liq
