FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full texlive-lang-german texlive-latex-extra latexmk \
    curl inkscape plantuml locales \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update -q && apt-get dist-upgrade -qy

RUN locale-gen de_DE.UTF-8
ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE:en
ENV LC_ALL de_DE.UTF-8

WORKDIR /data
VOLUME ["/data"]
