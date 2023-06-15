if [[ "$1" = "-d" ]]; then 
    echo " $(cat ~/.kblayout)"
else
    if [ $(cat ~/.kblayout) == us ]; then 
        hyprctl switchxkblayout logitech-g512-rgb-mechanical-gaming-keyboard 1 >/dev/null
        echo gr > ~/.kblayout
    else 
        hyprctl switchxkblayout logitech-g512-rgb-mechanical-gaming-keyboard 0 >/dev/null
        echo us > ~/.kblayout
    fi 
fi
