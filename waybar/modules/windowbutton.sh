if [[ $(hyprctl activewindow) = 'Invalid' ]]; then
    text=""
    class="empty"
    tooltip=""
else
    if [ $1 = "-cl" ]; then 
        text=" "
        class=close
        tooltip="Close"
    elif [ $1 = "-fl" ]; then 
        text=""
        class=floating
        tooltip="Toggle float"
    elif [ $1 = "-max" ]; then
        text=" " 
        class=maximize
        tooltip="Fullscreen"
    fi 
fi 

echo -e "{\"text\":\""$text"\", \"tooltip\":\""$tooltip"\", \"class\":\""$class"\"}"