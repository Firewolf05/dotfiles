polybar-msg action playerctl-youtube module_toggle >/dev/null
if [[ $(cat /tmp/yt-lock) ]]; then 
    echo > /tmp/yt-lock
    echo lockfile exists
else 
    echo str > /tmp/yt-lock
fi 