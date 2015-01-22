#!/bin/bash

source config.bash

curl --include \
     --upload-file $1 \
     $URL

echo
