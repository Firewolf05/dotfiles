if [ $(playerctl metadata -f '{{playerName}}') == 'firefox' ]; then
    if [ $(cat ~/.polybar-yt-module) == "" ]; then 
        echo $(playerctl metadata -f '{{title}}')
    fi
fi
##playerctl metadata -f '{{artist}}' | sed "s/ - Topic//g" && echo "-" &&
