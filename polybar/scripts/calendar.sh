if [ $(bspc query -M -m --names) == "HDMI-A-0" ];
then 
    $HOME/.config/eww/bar/scripts/popup calendar
else 
    $HOME/.config/eww/bar2/scripts/popup calendar
fi 