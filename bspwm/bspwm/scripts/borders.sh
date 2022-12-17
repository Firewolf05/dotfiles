if [ -f /tmp/borders ]; then 
    bspc config border_width 2
    del /tmp/borders
else
    bspc config border_width 0
    touch /tmp/borders
fi 