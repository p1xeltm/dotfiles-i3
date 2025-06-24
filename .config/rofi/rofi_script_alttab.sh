#!/bin/bash

count=$(wmctrl -l | wc -l)

lines=$(( count < 11 ? count : 11 ))

rofi -modi window -show window -show-icons \
  -kb-cancel "Escape" \
  -kb-accept-entry "!Alt-Tab,!Alt_L,!Alt+Alt_L,Return" \
  -kb-row-down "Alt+Tab" \
  -theme-str "entry { enabled: false; } prompt { enabled: false; } textbox-prompt-colon { enabled: false; } window { width: 270px; } listview { lines: $lines; scrollbar: false; }" \
  -selected-row 1 &