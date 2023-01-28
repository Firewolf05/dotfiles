#! /bin/sh 

display () {
    if [[ $(cat ~/.module-playerctl) = " " ]]; then
        echo "%{u#cdd6f4}%{F#cdd6f4} - "
    elif [[ $(cat ~/.module-playerctl) = "--player=spotify" ]]; then
        echo "%{u#a6da95}%{F#a6da95}󰓇 "
    elif [[ $(cat ~/.module-playerctl) = "--player=firefox" ]]; then
        echo "%{u#ed8796}%{F#ed8796}"
    fi 

}

switch () { 
    if [[ $(cat ~/.module-playerctl) = " " ]]; then
        echo "--player=spotify" > ~/.module-playerctl
        polybar-msg action "#playerctl-display.hook.0"
    elif [[ $(cat ~/.module-playerctl) = "--player=spotify" ]]; then
        echo "--player=firefox" > ~/.module-playerctl
        polybar-msg action "#playerctl-display.hook.0"
    elif [[ $(cat ~/.module-playerctl) = "--player=firefox" ]]; then
        echo " " > ~/.module-playerctl
        polybar-msg action "#playerctl-display.hook.0"
    fi 
}

if [ $1 == "display" ]; then
    display 
elif [ $1 == "switch" ]; then 
    switch 
fi 