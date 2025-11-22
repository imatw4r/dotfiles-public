#!/bin/bash

btc=(
    icon=    
    update_freq=5
    label.font="$FONT:Bold:10.0"
    script="$PLUGIN_DIR/btc.sh"
    updates=on
)

sketchybar -m --add item btc right \
              --set btc "${btc[@]}"