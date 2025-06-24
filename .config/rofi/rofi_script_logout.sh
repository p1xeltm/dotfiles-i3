#!/bin/bash

action=$(echo -e "⏻   Herunterfahren\n󱥸   Neustarten\n   Abmelden" | rofi -dmenu -p "" \
-theme-str 'entry { enabled: false; } prompt { enabled: false; } textbox-prompt-colon { enabled: false; } window { width: 200px; } listview { lines: 3; scrollbar: false;}')
case "$action" in
"⏻   Herunterfahren") systemctl poweroff ;;
"󱥸   Neustarten") systemctl reboot ;;
"   Abmelden") i3-msg exit ;;
esac