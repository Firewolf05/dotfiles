#polybar-msg action playerctl-youtube module_toggle >/dev/null
#if [ $(cat /tmp/yt-lock) ]; then 
#    echo lockfile exists

#    del /tmp/yt-lock
#    touch /tmp/yt-lock
#else 
#    echo str > /tmp/yt-lock
#fi 

if [ "$1" = "toggle" ]; then 
    if [ $(cat /tmp/yt-lock) ]; then 
        del /tmp/yt-lock
    else 
        echo str > /tmp/yt-lock
    fi
else 
    echo $(cat /tmp/yt-lock)
fi 