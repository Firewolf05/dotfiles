#! /bin/bash
command=$(xdotool getmouselocation --shell | cut -b 3,4,5,6  | sed -n '2 p')

if_polybar () {
    if (($command > 40)); then 
        if [ -f ~/.jgmenu-lockfile ]; then
            del ~/.jgmenu-lockfile
            pgrep jgmenu >/dev/null && pkill jgmenu && jgmenu || jgmenu 
        else 
            pgrep jgmenu >/dev/null && pkill jgmenu && jgmenu || jgmenu 
        fi 
    fi
}

if_kitty () {
    if [[ $(xdotool getactivewindow getwindowclassname) == "kitty" ]]; then 
        if (($command > 40)); then
            if [ -f ~/.jgmenu-lockfile ]; then
                del ~/.jgmenu-lockfile
                pgrep jgmenu >/dev/null && pkill jgmenu && jgmenu --csv-file=/home/george/.config/jgmenu/kitty.csv || jgmenu --csv-file=/home/george/.config/jgmenu/kitty.csv
            else 
                pgrep jgmenu >/dev/null && pkill jgmenu && jgmenu --csv-file=/home/george/.config/jgmenu/kitty.csv || jgmenu --csv-file=/home/george/.config/jgmenu/kitty.csv
            fi
        fi
    fi
}

if_variety () {
    if [[ $(xdotool getactivewindow getwindowname) == "Variety Images" ]]; then 
        if_polybar
    elif [[ $(xdotool getactivewindow getwindowname) == "Variety History" ]]; then
        if_polybar
    fi
}

if bspc query -D -d 'focused.!occupied' ; then
    if_polybar
else 
    if_variety
    if_kitty
fi 

