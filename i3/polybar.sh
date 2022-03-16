if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main -c /home/george/.config/polybar/blocks/config.ini &
  done
else
  polybar --reload main -c /home/george/.config/polybar/blocks/config.ini &
fi
