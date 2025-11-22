#!/bin/bash

battery=(
  script="$PLUGIN_DIR/battery.sh"
  icon.font="$FONT:Regular:12.0"
  label.font="$FONT:bold:10.0"
  icon.y_offset=-7
  padding_right=5
  padding_left=0
  label.drawing=on
  label.y_offset=10
  label.padding_left=-15
  update_freq=120
  updates=on
)

sketchybar --add item battery right      \
           --set battery "${battery[@]}" \
           --subscribe battery power_source_change system_woke
