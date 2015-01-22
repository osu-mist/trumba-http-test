#!/bin/bash

source config.bash

curl --include \
     --upload-file $1 \
     --user $USERNAME:$PASSWORD \
     $URL?delta=false

echo
