FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full texlive-lang-german texlive-latex-extra latexmk \
    curl inkscape plantuml locales \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update -q && apt-get dist-upgrade -qy

RUN echo 'de_DE.UTF-8 UTF-8' > /etc/locale.gen && \
    dpkg-reconfigure locales && \
    update-locale
ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE
ENV LC_ALL de_DE.UTF-8

WORKDIR /mnt
VOLUME ["/mnt"]
