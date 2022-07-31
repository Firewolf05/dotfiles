#!/usr/bin/bash 
if [[ ! -f /tmp/afk-lock  ]]; then 
#   discord-canary --url -- "discord://canary.discord.com/channels/786149025098235915/847504077985808426" &&    
    bspc monitor -f HDMI-A-0
    bspc query -D -d focused --names >/tmp/afk-lock 
    bspc monitor -f HDMI-A-1
    bspc query -D -d focused --names >/tmp/afk-lock-2
    kitty --class=afk-1 --start-as=fullscreen sh -c "tty-clock -s -c -C 4 -b" &
    kitty --class=afk-2 --start-as=fullscreen sh -c "cbonsai -l -i" &
    g512-led -fx hwave keys 0a  
    killall polybar
else 
    pkill tty-clock
    pkill cbonsai 
    bspc desktop -f $(cat /tmp/afk-lock)
    bspc desktop -f $(cat /tmp/afk-lock-2)
    del /tmp/afk-lock
    del /tmp/afk-lock-2
    sh $HOME/.config/bspwm/keyboard-colors
    reload-pb
fi 

