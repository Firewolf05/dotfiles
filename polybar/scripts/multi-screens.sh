pkill polybar 
#if type "xrandr"; then
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  MONITOR=$m polybar -r main -c $HOME/.config/polybar/bar/config.ini &
done
#else
#  polybar --reload main -c /home/george/.config/polybar/bar/config.ini &
#fi
