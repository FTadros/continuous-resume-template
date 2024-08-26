#!/bin/bash
# check if sudo apt-get install inotify-tools is installed
# if not, install it
if ! [ -x "$(command -v inotifywait)" ]; then
  sudo apt-get install inotify-tools
fi
inotifywait -m -e modify src/*.tex | while read path action file; do
    ./scripts/buildpdf.sh
done
