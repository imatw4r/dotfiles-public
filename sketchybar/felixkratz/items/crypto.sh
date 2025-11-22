#!/bin/bash

crypto=(
    icon=    
    update_freq=5
    label.font="$FONT:Bold:10.0"
    script="$PLUGIN_DIR/crypto.sh"
)

sketchybar -m --add item crypto right \
              --set crypto "${crypto[@]}" \
              --subscribe system_woke