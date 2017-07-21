FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full texlive-lang-german texlive-latex-extra latexmk \
    curl inkscape plantuml \
    && apt-get autoclean -y \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update -q && apt-get dist-upgrade -qy

WORKDIR /data
VOLUME ["/data"]
