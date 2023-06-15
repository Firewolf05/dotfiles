if [ $1 = "-prev" ]; then 
    text=""
    class=prev
    tooltip="Previous"
elif [ $1 = "-p" ]; then 
    class=$(playerctl metadata --player=spotify --format '{{lc(status)}}')
    if [[ $class == "playing" ]]; then 
        text=""
        tooltip="Pause"
    elif [[ $class == "paused" ]]; then
        text=""
        tooltip="Play"
    fi
elif [ $1 = "-next" ]; then
    text="" 
    class=next
    tooltip="Next"
fi

echo -e "{\"text\":\""$text"\", \"tooltip\":\""$tooltip"\", \"class\":\""$class"\"}"