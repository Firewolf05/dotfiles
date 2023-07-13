var="$(hyprctl activeworkspace | head -1 | sed -e 's/workspace ID //g' | sed -e 's/ on monitor HDMI-A-1://g')"
var2=${var:0:1}
if [ $var2 == "5" ]; then 
    hyprctl dispatch workspace $(cat /tmp/music-player-switch)
    del /tmp/music-player-switch 
else 
    echo $var2 > /tmp/music-player-switch
    hyprctl dispatch workspace 5 
fi
