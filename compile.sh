#!/bin/sh
SRC_FILE=$(echo $1 | awk -F'[/]' '{printf "%s/%s", $2, $3}')
docker run --rm -it -v $PWD:/workdir latex-template:latest /bin/ash -c "cd src && latexmk -pvc $SRC_FILE"
