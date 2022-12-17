if [ $(cat ~/.kblayout) == us ]; then 
    setxkbmap -layout gr
    echo gr > ~/.kblayout
    polybar-msg action "#keyboard.hook.0"
else 
    setxkbmap -layout us
    echo us > ~/.kblayout
    polybar-msg action "#keyboard.hook.0"
fi 