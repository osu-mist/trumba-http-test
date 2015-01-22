#!/bin/bash

source config.bash

curl --include \
     --user $USERNAME:$PASSWORD \
     $URL

echo
