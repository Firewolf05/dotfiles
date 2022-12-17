action () {
    if [[ $1 == "pause" ]]; then 
        echo "" > /tmp/polybarIconSpotify
        polybar-msg action "#playerctl-spotify.hook.0" > /dev/null
        playerctl --player=spotify pause
    elif [[ $1 == "play" ]]; then 
        echo "" > /tmp/polybarIconSpotify
        polybar-msg action "#playerctl-spotify.hook.0" > /dev/null
        playerctl --player=spotify play 
    fi
}

display () {
    echo $(playerctl --player=spotify metadata -f '{{artist}} - {{title}}') > /tmp/polybarDataSpotify
    icon=$(cat /tmp/polybarIconSpotify)
    if pgrep spotify >/dev/null ; then
        if [ $icon = "" ]; then 
            echo "%{A1:playerctl --player=spotify previous:}  %{A}%{A1:~/scripts/polybar/spotify-playerctl.sh action pause:}$icon%{A}%{A1:playerctl --player=spotify next:}  %{A}| " $(playerctl --player=spotify metadata -f '{{artist}} - {{title}}')
        else 
            echo "%{A1:playerctl --player=spotify previous:}  %{A}%{A1:~/scripts/polybar/spotify-playerctl.sh action play:}$icon%{A}%{A1:playerctl --player=spotify next:}  %{A}| " $(playerctl --player=spotify metadata -f '{{artist}} - {{title}}')
        fi
    else 
        echo 
    fi 
}


if [[ $1 == "display" ]]; then 
    display 
elif [[ $1 == "action" ]]; then 
    action $2 
fi 