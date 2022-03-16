#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/blocks/scripts"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $SDIR/rofi/styles.rasi \
<<< " Default| Nord| Dracula| Adapta| Cherry|")"
            case "$MENU" in
				*Default) "$SDIR"/styles.sh --default ;;
				*Nord) "$SDIR"/styles.sh --nord ;;
				*Dracula) "$SDIR"/styles.sh --dracula ;;
				*Adapta) "$SDIR"/styles.sh --adapta ;;
				*Cherry) "$SDIR"/styles.sh --cherry ;;
            esac
