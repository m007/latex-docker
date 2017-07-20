#!/bin/bash
DIMAGE="calvinspiff/latex-docker"
docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data $DIMAGE latexmk -pdf --interaction=batchmode $@
