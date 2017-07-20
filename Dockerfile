FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full texlive-lang-german texlive-latex-extra \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update -q && apt-get install -qy latexmk

WORKDIR /data
VOLUME ["/data"]
