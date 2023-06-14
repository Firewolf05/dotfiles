if [ $(cat ~/.kblayout) == us ]; then 
    hyprctl switchxkblayout logitech-g512-rgb-mechanical-gaming-keyboard 1
    echo gr > ~/.kblayout
else 
     hyprctl switchxkblayout logitech-g512-rgb-mechanical-gaming-keyboard 0
    echo us > ~/.kblayout
fi 