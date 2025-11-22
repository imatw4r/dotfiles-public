#!/bin/bash


function setup() {
    sudo mv /Library/LaunchDaemons/com.paloaltonetworks.gp.pangpsd.plist /Library/Application\ Support/PaloAltoNetworks/GlobalProtect/
    sudo mv /Library/LaunchAgents/com.paloaltonetworks.gp.pangps.plist /Library/Application\ Support/PaloAltoNetworks/GlobalProtect/
    sudo mv /Library/LaunchAgents/com.paloaltonetworks.gp.pangpa.plist /Library/Application\ Support/PaloAltoNetworks/GlobalProtect/
}

function up() {
  launchctl load /Library/Application\ Support/PaloAltoNetworks/GlobalProtect/com.paloaltonetworks.gp.pangps.plist
  launchctl load /Library/Application\ Support/PaloAltoNetworks/GlobalProtect/com.paloaltonetworks.gp.pangpa.plist
}

function down() {
  launchctl remove com.paloaltonetworks.gp.pangps
  launchctl remove com.paloaltonetworks.gp.pangpa
}

case $1 in

up)
echo "Launching global protect"
up
  ;;
down)
echo "Quitting global protect"
down
  ;;
setup)
echo "Disabling global protect from startup items"
setup
  ;;
*)
  echo "'$1' is not a valid verb.  The only valid verbs are 'up' and 'down'."
  exit 1
  ;;
esac