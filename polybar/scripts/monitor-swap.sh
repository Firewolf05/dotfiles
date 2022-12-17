if [ $(bspc query -M -m .focused --names) == "HDMI-A-0" ]; then 
    bspc node -m HDMI-A-1
else 
    bspc node -m HDMI-A-0
fi 