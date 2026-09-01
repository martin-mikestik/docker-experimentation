FROM ubuntu:latest
RUN apt update
RUN apt install -y python3

WORKDIR /server-stuff
COPY server-files/index.md .

RUN python3 -m http.server 8000
