#!/bin/bash

eth=(
    icon=ﲹ
    update_freq=5
    label.font="$FONT:Bold:10.0"
    script="$PLUGIN_DIR/eth.sh"
)

sketchybar -m --add item eth right \
              --set eth "${eth[@]}" \
              --subscibe system_woke