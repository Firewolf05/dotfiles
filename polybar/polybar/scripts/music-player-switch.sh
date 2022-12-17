if [ $1 == spotify ]; then 
    var=5
elif [ $1 == yt ]; then 
    var=4
fi
if [ $(bspc query -D -d 'focused' --names) == $var ]; then 
    bspc desktop -f $(cat /tmp/music-player-switch)
    del /tmp/music-player-switch 
else 
    bspc query -D -d 'focused' --names > /tmp/music-player-switch
    bspc desktop -f $var 
fi
