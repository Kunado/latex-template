#!/bin/sh
docker run --rm -it -v $PWD:/workdir latex-template:latest latexmk -pvc $1
