FROM ubuntu:22.04

RUN apt update && apt install -y icecast2 liquidsoap

COPY icecast.xml /etc/icecast2/icecast.xml
COPY radio.liq /radio.liq
COPY music /music

CMD service icecast2 start && liquidsoap /radio.liq
