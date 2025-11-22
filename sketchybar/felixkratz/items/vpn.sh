#!/bin/bash
##### Flow Plugin #####

sketchybar --add item vpn right \
           --set vpn update_freq=1 \
        	      script="$PLUGIN_DIR/vpn.sh" \
	              click_script="sketchybar -m --set vpn popup.drawing=toggle" \
	              popup.background.border_width=3 \
                      popup.background.corner_radius=4 \
                      popup.background.border_color=0xFFCA9EE6 \
		      popup.background.color=0xFF737994 \
		      popup.horizontal=on \
		      popup.align=center \
		      \
	   --add item vpn.start popup.vpn \
	   --set vpn.start label="Start" \
	                    click_script="osascript -e 'tell application \"Flow\" to start' ; sketchybar -m --set flow popup.drawing=toggle" \
	   		    \
	   --add item flow.stop popup.flow \
	   --set flow.stop label="Stop" \
	                   click_script="osascript -e 'tell application \"Flow\" to stop' ; sketchybar -m --set flow popup.drawing=toggle" \
	   		   \
	   --add item flow.skip popup.flow \
	   --set flow.skip label="Skip" \
	                   click_script="osascript -e 'tell application \"Flow\" to skip' ; sketchybar -m --set flow popup.drawing=toggle" \
			   \
	   --add item flow.reset popup.flow \
	   --set flow.reset label="Reset" \
	                   click_script="osascript -e 'tell application \"Flow\" to reset' ; sketchybar -m --set flow popup.drawing=toggle" \
			   \
	   --add item flow.show popup.flow \
	   --set flow.show label="Show" \
	                   click_script="osascript -e 'tell application \"Flow\" to show' ; sketchybar -m --set flow popup.drawing=toggle"