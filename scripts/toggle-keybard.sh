#!/bin/sh

export STATUS_FILE="$XDG_RUNTIME_DIR/keyboard.status"

enable_keyboard() {
    printf "true" >"$STATUS_FILE"
    notify-send -u normal "Enabling Keyboard"
    hyprctl keyword '$LAPTOP_KB_ENABLED' "true" -r
    # hyprctl keyword '$LAPTOP_TP_ENABLED' "true" -r
}

disable_keyboard() {
    printf "false" >"$STATUS_FILE"
    notify-send -u normal "Disabling Keyboard"
    hyprctl keyword '$LAPTOP_KB_ENABLED' "false" -r
    # hyprctl keyword '$LAPTOP_TP_ENABLED' "false" -r
}

if ! [ -f "$STATUS_FILE" ]; then
  enable_keyboard
else
  if [ $(cat "$STATUS_FILE") = "true" ]; then
    disable_keyboard
  elif [ $(cat "$STATUS_FILE") = "false" ]; then
    enable_keyboard
  fi
fi
